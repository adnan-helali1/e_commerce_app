import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/widgets/app_shimer.dart';
import 'package:B2B/app/features/stock/data/models/get_stock/get_stock_response.dart';
import 'package:B2B/app/features/stock/logic/get_stock/get_stock_cubit.dart';
import 'package:B2B/app/features/stock/logic/get_stock/get_stock_state.dart';
import 'package:B2B/app/features/stock/data/models/stock_ui_models.dart';
import 'package:B2B/app/features/stock/ui/screens/error_section.dart';
import 'package:B2B/app/features/stock/ui/screens/success_section.dart';
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

    if (item.quantity <= 0) {
      status = StockStatus.outOfStock;
    } else if (item.quantity <= item.minStock) {
      status = StockStatus.lowStock;
    } else if (item.quantity <= item.minStock * 3) {
      status = StockStatus.inStock;
    } else {
      status = StockStatus.wellStocked;
    }

    return InventoryItem(
      id: item.storeProductId,
      storeProduct: item.storeProductId,
      supplierProduct: item.storeProduct.supplierProductId,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cs.background,
      body: BlocBuilder<GetStockCubit, GetStockState>(
        builder: (context, state) => state.when(
            initial: () => const AppShimmer(),
            loading: () => const AppShimmer(),
            failure: (error) => StockErrorSection(
                  error: error,
                  onRetry: () => context.read<GetStockCubit>().load(),
                ),
            success: (response) {
              return StockSuccessSection(
                response: response,
                selectedFilter: _selectedFilter,
                searchQuery: _searchQuery,
                toInventoryItem: _toInventoryItem,
                applyFilters: _applyFilters,
                buildFilterTabs: _buildFilterTabs,
                onFilterChanged: (i) => setState(() => _selectedFilter = i),
                onSearchChanged: (q) => setState(() => _searchQuery = q),
                onRefresh: () => context.read<GetStockCubit>().refresh(),
              );
            }),
      ),
    );
  }
}
