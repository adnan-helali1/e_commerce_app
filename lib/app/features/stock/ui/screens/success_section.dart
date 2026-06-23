import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/features/stock/data/models/get_stock/get_stock_response.dart';
import 'package:B2B/app/features/stock/data/models/stock_ui_models.dart';
import 'package:B2B/app/features/stock/ui/screens/add_stock_sheet.dart';
import 'package:B2B/app/features/stock/ui/widgets/detailes_dialog.dart';
import 'package:B2B/app/features/stock/ui/widgets/filter_tab_row.dart';
import 'package:B2B/app/features/stock/ui/widgets/stat_item_card.dart';
import 'package:B2B/app/features/stock/ui/widgets/stock_header.dart';
import 'package:B2B/app/features/stock/ui/widgets/stock_search_bar.dart';
import 'package:flutter/material.dart';

class StockSuccessSection extends StatelessWidget {
  final GetStockResponse response;
  final int selectedFilter;
  final String searchQuery;
  final InventoryItem Function(StockItem) toInventoryItem;
  final List<InventoryItem> Function(List<InventoryItem>) applyFilters;
  final List<String> Function(List<InventoryItem>) buildFilterTabs;
  final ValueChanged<int> onFilterChanged;
  final ValueChanged<String> onSearchChanged;
  final Future<void> Function() onRefresh;

  const StockSuccessSection({
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
    final detailedItems = response;
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
                    details: () {
                      showStockDetailsDialog(
                          context, detailedItems.data[index]);
                    },
                    item: item,
                    onReduce: () {},
                    onAddStock: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (_) => const AddStockSheet(),
                      );
                    },
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

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
