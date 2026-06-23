import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/features/stock/ui/screens/full_stock_screen.dart';
import 'package:B2B/app/features/stock/ui/widgets/filter_tab_row.dart';
import 'package:B2B/app/features/stock/ui/widgets/stat_item_card.dart';
import 'package:B2B/app/features/stock/ui/widgets/stock_header.dart';
import 'package:B2B/app/features/stock/ui/widgets/stock_search_bar.dart';
import 'package:flutter/material.dart';

class InventoryOverviewScreen extends StatefulWidget {
  const InventoryOverviewScreen({super.key});

  @override
  State<InventoryOverviewScreen> createState() =>
      _InventoryOverviewScreenState();
}

class _InventoryOverviewScreenState extends State<InventoryOverviewScreen> {
  int _selectedFilter = 0;

  static const List<String> _filters = [
    'All Items (4)',
    'Low Stock (0)',
    'Out of Stock (0)',
  ];

  // 🔌 Replace with your real data source / controller
  static const List<InventoryItem> _items = [
    InventoryItem(
      name: 'Premium Organic Mil...',
      supplier: 'GreenFarm Suppliers',
      currentStock: 180,
      maxStock: 200,
      minStock: 20,
      lastUpdated: '2026-05-02',
      status: StockStatus.wellStocked,
    ),
    InventoryItem(
      name: 'Whole Wheat Bread',
      supplier: 'BakeMaster Ltd',
      currentStock: 65,
      maxStock: 200,
      minStock: 20,
      lastUpdated: '2026-05-02',
      status: StockStatus.inStock,
    ),
  ];

  void _handleReduce(InventoryItem item) {}

  void _handleAddStock(InventoryItem item) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cs.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InventoryHeader(
              totalItems: 4,
              lowStock: 0,
              outOfStock: 0,
              selectedStatIndex: 1, // 0=Total, 1=Low, 2=OutOfStock
            ),
            // Search
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 2),
              child: const InventorySearchBar(),
            ),
            verticalSpace(14),

            // Filter tabs
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 0, 18, 2),
              child: FilterTabRow(
                tabs: _filters,
                selectedIndex: _selectedFilter,
                onTabSelected: (i) => setState(() => _selectedFilter = i),
              ),
            ),
            verticalSpace(16),

            // Item cards
            for (final item in _items) ...[
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 2, 18, 2),
                child: InventoryItemCard(
                  item: item,
                  onReduce: () => _handleReduce(item),
                  onAddStock: () => _handleAddStock(item),
                ),
              ),
              verticalSpace(32),
            ],
          ],
        ),
      ),
    );
  }
}

class StockStatusBadge extends StatelessWidget {
  final StockStatus status;

  const StockStatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final Color bg;
    final Color fg;
    final String label;

    switch (status) {
      case StockStatus.wellStocked:
        bg = context.appColors.success;
        fg = context.appColors.success;
        label = 'Well Stocked';
        break;
      case StockStatus.inStock:
        bg = context.appColors.info;
        fg = context.appColors.info;
        label = 'In Stock';
        break;
      case StockStatus.lowStock:
        bg = context.appColors.warning;
        fg = context.appColors.warning;
        label = 'Low Stock';
        break;
      case StockStatus.outOfStock:
        bg = context.appColors.failure;
        fg = context.appColors.failure;
        label = 'Out of Stock';
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: fg,
          fontSize: 11,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
