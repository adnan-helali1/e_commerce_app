import 'dart:async';

import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/features/stock/data/models/get_stock_models/get_stock_response.dart';
import 'package:B2B/app/features/stock/logic/cubit/get_stock_cubit.dart';
import 'package:B2B/app/features/stock/logic/cubit/get_stock_state.dart';

import 'package:B2B/app/features/stock/ui/screens/full_stock_screen.dart';
import 'package:B2B/app/features/stock/ui/widgets/filter_tab_row.dart';
import 'package:B2B/app/features/stock/ui/widgets/stat_item_card.dart';
import 'package:B2B/app/features/stock/ui/widgets/stock_header.dart';
import 'package:B2B/app/features/stock/ui/widgets/stock_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ══════════════════════════════════════════════════════════════════════════════
// SCREEN
// ══════════════════════════════════════════════════════════════════════════════

class InventoryOverviewScreen extends StatefulWidget {
  const InventoryOverviewScreen({super.key});

  @override
  State<InventoryOverviewScreen> createState() =>
      _InventoryOverviewScreenState();
}

class _InventoryOverviewScreenState extends State<InventoryOverviewScreen> {
  int _selectedFilter = 0;
  String _searchQuery = '';

  // ── Mapper: StockItem (API) → InventoryItem (UI) ──────────────────────────

  InventoryItem _toInventoryItem(StockItem item) {
    final product = item.storeProduct.supplierProduct.product;
    final supplier = item.storeProduct.supplierProduct.supplier;
    final supplierQty = item.storeProduct.supplierProduct.stockQuantity;

    // maxStock = what I own + what supplier still has
    final maxStock =
        (item.quantity + supplierQty).clamp(1, double.maxFinite).toInt();

    final StockStatus status;
    if (item.quantity == 0) {
      status = StockStatus.outOfStock;
    } else if (item.quantity <= item.minStock) {
      status = StockStatus.lowStock;
    } else if (item.quantity <= item.minStock * 2) {
      status = StockStatus.inStock;
    } else {
      status = StockStatus.wellStocked;
    }

    return InventoryItem(
      name: product.name,
      supplier: supplier.name,
      currentStock: item.quantity,
      maxStock: maxStock,
      minStock: item.minStock,
      lastUpdated: _formatDate(item.updatedAt),
      status: status,
    );
  }

  String _formatDate(DateTime dt) {
    final local = dt.toLocal();
    return '${local.year}-${local.month.toString().padLeft(2, '0')}-${local.day.toString().padLeft(2, '0')}';
  }

  // ── Filter + Search ───────────────────────────────────────────────────────

  List<InventoryItem> _applyFilters(List<InventoryItem> items) {
    var result = items;

    switch (_selectedFilter) {
      case 1:
        result = result.where((e) => e.status == StockStatus.lowStock).toList();
        break;
      case 2:
        result =
            result.where((e) => e.status == StockStatus.outOfStock).toList();
        break;
    }

    if (_searchQuery.isNotEmpty) {
      final q = _searchQuery.toLowerCase();
      result = result
          .where((e) =>
              e.name.toLowerCase().contains(q) ||
              e.supplier.toLowerCase().contains(q))
          .toList();
    }

    return result;
  }

  List<String> _buildFilterTabs(List<InventoryItem> all) => [
        'All Items (${all.length})',
        'Low Stock (${all.where((e) => e.status == StockStatus.lowStock).length})',
        'Out of Stock (${all.where((e) => e.status == StockStatus.outOfStock).length})',
      ];

  // ── Build ─────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cs.background,
      body: BlocBuilder<GetStockCubit, GetStockState>(
        builder: (context, state) => state.when(
          initial: () => const _StockLoadingSection(),
          loading: () => const _StockLoadingSection(),
          failure: (error) => _StockErrorSection(
            error: error,
            onRetry: () => context.read<GetStockCubit>().load(),
          ),
          success: (response) => _StockSuccessSection(
            response: response,
            selectedFilter: _selectedFilter,
            searchQuery: _searchQuery,
            toInventoryItem: _toInventoryItem,
            applyFilters: _applyFilters,
            buildFilterTabs: _buildFilterTabs,
            onFilterChanged: (i) => setState(() => _selectedFilter = i),
            onSearchChanged: (q) => setState(() => _searchQuery = q),
            onRefresh: () => context.read<GetStockCubit>().refresh(),
          ),
        ),
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// SECTION — Success
// ══════════════════════════════════════════════════════════════════════════════

class _StockSuccessSection extends StatelessWidget {
  final GetStockResponse response;
  final int selectedFilter;
  final String searchQuery;
  final InventoryItem Function(StockItem) toInventoryItem;
  final List<InventoryItem> Function(List<InventoryItem>) applyFilters;
  final List<String> Function(List<InventoryItem>) buildFilterTabs;
  final ValueChanged<int> onFilterChanged;
  final ValueChanged<String> onSearchChanged;
  final Future<void> Function() onRefresh;

  const _StockSuccessSection({
    required this.response,
    required this.selectedFilter,
    required this.searchQuery,
    required this.toInventoryItem,
    required this.applyFilters,
    required this.buildFilterTabs,
    required this.onFilterChanged,
    required this.onSearchChanged,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final allItems = response.data.map(toInventoryItem).toList();
    final filteredItems = applyFilters(allItems);
    final filterTabs = buildFilterTabs(allItems);

    final lowCount =
        allItems.where((e) => e.status == StockStatus.lowStock).length;
    final outCount =
        allItems.where((e) => e.status == StockStatus.outOfStock).length;

    return RefreshIndicator(
      onRefresh: onRefresh,
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          // ── Section 1: Header ─────────────────────────────────────────
          SliverToBoxAdapter(
            child: InventoryHeader(
              totalItems: allItems.length,
              lowStock: lowCount,
              outOfStock: outCount,
              selectedStatIndex: 0,
            ),
          ),

          // ── Section 2: Search ─────────────────────────────────────────
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 2),
              child: InventorySearchBar(
                onChanged: onSearchChanged,
              ),
            ),
          ),

          SliverToBoxAdapter(child: verticalSpace(14)),

          // ── Section 3: Filter Tabs ────────────────────────────────────
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 2),
              child: FilterTabRow(
                tabs: filterTabs,
                selectedIndex: selectedFilter,
                onTabSelected: onFilterChanged,
              ),
            ),
          ),

          SliverToBoxAdapter(child: verticalSpace(16)),

          // ── Section 4: Empty State ────────────────────────────────────
          if (filteredItems.isEmpty)
            const SliverFillRemaining(
              hasScrollBody: false,
              child: _StockEmptySection(),
            )

          // ── Section 5: Items List ─────────────────────────────────────
          else
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 40),
              sliver: SliverList.separated(
                itemCount: filteredItems.length,
                separatorBuilder: (_, __) => verticalSpace(12),
                itemBuilder: (context, index) {
                  final item = filteredItems[index];
                  return InventoryItemCard(
                    key: ValueKey(item.name),
                    item: item,
                    onReduce: () {},
                    onAddStock: () {},
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// SECTION — Loading
// ══════════════════════════════════════════════════════════════════════════════

class _StockLoadingSection extends StatelessWidget {
  const _StockLoadingSection();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// SECTION — Error
// ══════════════════════════════════════════════════════════════════════════════

class _StockErrorSection extends StatelessWidget {
  final String error;
  final VoidCallback onRetry;

  const _StockErrorSection({
    required this.error,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline_rounded,
                size: 52, color: context.cs.error),
            verticalSpace(12),
            Text(
              error,
              textAlign: TextAlign.center,
              style: TextStyle(color: context.cs.onSurfaceVariant),
            ),
            verticalSpace(20),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Try Again'),
            ),
          ],
        ),
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// SECTION — Empty
// ══════════════════════════════════════════════════════════════════════════════

class _StockEmptySection extends StatelessWidget {
  const _StockEmptySection();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.inventory_2_outlined,
              size: 52, color: context.cs.onSurfaceVariant),
          verticalSpace(12),
          Text(
            'No items found',
            style: TextStyle(
              color: context.cs.onSurfaceVariant,
              fontWeight: FontWeight.w500,
            ),
          ),
          verticalSpace(6),
          Text(
            'Try adjusting your search or filter.',
            style: TextStyle(
              fontSize: 13,
              color: context.cs.onSurfaceVariant.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
