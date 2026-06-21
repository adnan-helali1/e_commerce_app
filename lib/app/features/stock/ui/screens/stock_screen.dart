import 'package:flutter/material.dart';

// ══════════════════════════════════════════════════════════════════════════════
// APP
// ══════════════════════════════════════════════════════════════════════════════

// ══════════════════════════════════════════════════════════════════════════════
// MODELS
// ══════════════════════════════════════════════════════════════════════════════

enum StockStatus { wellStocked, inStock, lowStock, outOfStock }

class InventoryItem {
  final String name;
  final String supplier;
  final int currentStock;
  final int maxStock;
  final int minStock;
  final String lastUpdated;
  final StockStatus status;

  const InventoryItem({
    required this.name,
    required this.supplier,
    required this.currentStock,
    required this.maxStock,
    required this.minStock,
    required this.lastUpdated,
    required this.status,
  });
}

// ══════════════════════════════════════════════════════════════════════════════
// DESIGN TOKENS
// ══════════════════════════════════════════════════════════════════════════════

abstract class AppColors {
  static const Color primary = Color(0xFF3A56D4);
  static const Color gradientStart = Color(0xFF2C45CC);
  static const Color gradientEnd = Color(0xFF5E38D0);
  static const Color selectedCard = Color(0xFF233BB0);
  static const Color background = Color(0xFFEEF1F8);
  static const Color cardBg = Colors.white;
  static const Color iconContainerBg = Color(0xFFF3F4F6);
  static const Color border = Color(0xFFE5E7EB);
  static const Color divider = Color(0xFFF3F4F6);
  static const Color progressBg = Color(0xFFE5E7EB);
  static const Color progressFill = Color(0xFF43C464);
  static const Color textDark = Color(0xFF111827);
  static const Color textMid = Color(0xFF374151);
  static const Color textGrey = Color(0xFF6B7280);
  static const Color textLight = Color(0xFF9CA3AF);
  static const Color white = Colors.white;

  // Badge colors
  static const Color wellStockedBg = Color(0xFFE8F5E9);
  static const Color wellStockedText = Color(0xFF2E7D32);
  static const Color inStockBg = Color(0xFFE0F2F1);
  static const Color inStockText = Color(0xFF00695C);
  static const Color lowStockBg = Color(0xFFFFF8E1);
  static const Color lowStockText = Color(0xFFF57F17);
  static const Color outStockBg = Color(0xFFFFEBEE);
  static const Color outStockText = Color(0xFFC62828);
}

abstract class AppTextStyles {
  static const TextStyle headerTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    letterSpacing: -0.3,
  );
  static const TextStyle statValue = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w800,
    color: Colors.white,
  );
  static const TextStyle statLabel = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: Color(0xCCFFFFFF),
    height: 1.3,
  );
  static const TextStyle itemName = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.textDark,
  );
  static const TextStyle supplierName = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textLight,
  );
  static const TextStyle sectionLabel = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textGrey,
  );
  static const TextStyle sectionValue = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: AppColors.textMid,
  );
  static const TextStyle infoLabel = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: AppColors.textLight,
  );
  static const TextStyle infoValue = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: AppColors.textMid,
  );
  static const TextStyle tabLabel = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle buttonLabel = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );
}

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

  void _handleReduce(InventoryItem item) {
    // TODO: wire to logic layer
  }

  void _handleAddStock(InventoryItem item) {
    // TODO: wire to logic layer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          // ── Gradient Header ─────────────────────────────────────────────
          InventoryHeader(
            totalItems: 4,
            lowStock: 0,
            outOfStock: 0,
            selectedStatIndex: 1, // 0=Total, 1=Low, 2=OutOfStock
          ),

          // ── Scrollable Body ─────────────────────────────────────────────
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Search
                  const InventorySearchBar(),
                  const SizedBox(height: 14),

                  // Filter tabs
                  FilterTabRow(
                    tabs: _filters,
                    selectedIndex: _selectedFilter,
                    onTabSelected: (i) => setState(() => _selectedFilter = i),
                  ),
                  const SizedBox(height: 16),

                  // Item cards
                  for (final item in _items) ...[
                    InventoryItemCard(
                      item: item,
                      onReduce: () => _handleReduce(item),
                      onAddStock: () => _handleAddStock(item),
                    ),
                    const SizedBox(height: 12),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// WIDGET — InventoryHeader
// ══════════════════════════════════════════════════════════════════════════════
///
/// Gradient banner that displays the screen title and three [StatOverviewCard]s.
/// Pass [selectedStatIndex] (0, 1, or 2) to highlight the active card.
///
class InventoryHeader extends StatelessWidget {
  final int totalItems;
  final int lowStock;
  final int outOfStock;
  final int selectedStatIndex;

  const InventoryHeader({
    super.key,
    required this.totalItems,
    required this.lowStock,
    required this.outOfStock,
    this.selectedStatIndex = 1,
  });

  @override
  Widget build(BuildContext context) {
    final stats = [
      _StatData(
          Icons.inventory_2_outlined, totalItems.toString(), 'Total Items'),
      _StatData(Icons.warning_amber_outlined, lowStock.toString(), 'Low Stock'),
      _StatData(
          Icons.show_chart_rounded, outOfStock.toString(), 'Out of Stock'),
    ];

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.gradientStart, AppColors.gradientEnd],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 14, 20, 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Row(
                children: [
                  const Icon(Icons.inventory_2_outlined,
                      color: Colors.white, size: 20),
                  const SizedBox(width: 8),
                  const Text('Inventory Overview',
                      style: AppTextStyles.headerTitle),
                ],
              ),
              const SizedBox(height: 20),

              // Stat cards
              Row(
                children: [
                  for (int i = 0; i < stats.length; i++) ...[
                    Expanded(
                      child: StatOverviewCard(
                        icon: stats[i].icon,
                        value: stats[i].value,
                        label: stats[i].label,
                        isSelected: i == selectedStatIndex,
                      ),
                    ),
                    if (i < stats.length - 1) const SizedBox(width: 10),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatData {
  final IconData icon;
  final String value;
  final String label;
  const _StatData(this.icon, this.value, this.label);
}

// ══════════════════════════════════════════════════════════════════════════════
// WIDGET — StatOverviewCard
// ══════════════════════════════════════════════════════════════════════════════
///
/// A single stat tile inside [InventoryHeader].
/// Use [isSelected] to show the highlighted (darker) background.
///
class StatOverviewCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final bool isSelected;

  const StatOverviewCard({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.selectedCard
            : Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(12),
        border: isSelected
            ? Border.all(color: Colors.white.withOpacity(0.25), width: 1)
            : null,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 22),
          const SizedBox(height: 6),
          Text(value, style: AppTextStyles.statValue),
          const SizedBox(height: 3),
          Text(label,
              style: AppTextStyles.statLabel, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// WIDGET — InventorySearchBar
// ══════════════════════════════════════════════════════════════════════════════
///
/// Rounded search input for filtering inventory items.
///
class InventorySearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const InventorySearchBar({super.key, this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: AppColors.cardBg,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: const TextStyle(fontSize: 14, color: AppColors.textDark),
        decoration: const InputDecoration(
          hintText: 'Search inventory...',
          hintStyle: TextStyle(color: AppColors.textLight, fontSize: 14),
          prefixIcon:
              Icon(Icons.search_rounded, color: AppColors.textLight, size: 20),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// WIDGET — FilterTabRow
// ══════════════════════════════════════════════════════════════════════════════
///
/// A horizontal row of [FilterTab] chips.
///
class FilterTabRow extends StatelessWidget {
  final List<String> tabs;
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const FilterTabRow({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < tabs.length; i++) ...[
          FilterTab(
            label: tabs[i],
            isSelected: i == selectedIndex,
            onTap: () => onTabSelected(i),
          ),
          if (i < tabs.length - 1) const SizedBox(width: 8),
        ],
      ],
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// WIDGET — FilterTab
// ══════════════════════════════════════════════════════════════════════════════
///
/// A single pill-style tab. Selected state uses a dark navy fill.
///
class FilterTab extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const FilterTab({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 9),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF1A2B8C) : AppColors.cardBg,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? const Color(0xFF1A2B8C) : AppColors.border,
          ),
        ),
        child: Text(
          label,
          style: AppTextStyles.tabLabel.copyWith(
            color: isSelected ? Colors.white : AppColors.textGrey,
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// WIDGET — InventoryItemCard
// ══════════════════════════════════════════════════════════════════════════════
///
/// Displays a single [InventoryItem] with stock progress bar and action buttons.
///
class InventoryItemCard extends StatelessWidget {
  final InventoryItem item;
  final VoidCallback onReduce;
  final VoidCallback onAddStock;

  const InventoryItemCard({
    super.key,
    required this.item,
    required this.onReduce,
    required this.onAddStock,
  });

  @override
  Widget build(BuildContext context) {
    final double stockPercent =
        (item.currentStock / item.maxStock).clamp(0.0, 1.0);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardBg,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Top row: icon / name / badge ──────────────────────────────
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon container
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: AppColors.iconContainerBg,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.inventory_2_outlined,
                  color: AppColors.textGrey,
                  size: 22,
                ),
              ),
              const SizedBox(width: 12),

              // Name + supplier
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: AppTextStyles.itemName,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 3),
                    Text(item.supplier, style: AppTextStyles.supplierName),
                  ],
                ),
              ),
              const SizedBox(width: 8),

              // Status badge
              StockStatusBadge(status: item.status),
            ],
          ),

          const SizedBox(height: 16),

          // ── Stock level label + count ──────────────────────────────────
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Stock Level', style: AppTextStyles.sectionLabel),
              Text(
                '${item.currentStock} / ${item.maxStock} units',
                style: AppTextStyles.sectionValue,
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Progress bar
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LinearProgressIndicator(
              value: stockPercent,
              minHeight: 8,
              backgroundColor: AppColors.progressBg,
              valueColor:
                  const AlwaysStoppedAnimation<Color>(AppColors.progressFill),
            ),
          ),

          const SizedBox(height: 14),

          // ── Min Stock + Last Updated ───────────────────────────────────
          Row(
            children: [
              Expanded(
                child: _InfoColumn(
                  label: 'Min Stock',
                  value: '${item.minStock} units',
                ),
              ),
              Expanded(
                child: _InfoColumn(
                  label: 'Last Updated',
                  value: item.lastUpdated,
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),
          const Divider(height: 1, thickness: 1, color: AppColors.divider),
          const SizedBox(height: 14),

          // ── Action buttons ─────────────────────────────────────────────
          Row(
            children: [
              Expanded(
                child: InventoryActionButton(
                  label: '− Reduce',
                  onTap: onReduce,
                  isOutlined: true,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: InventoryActionButton(
                  label: '+ Add Stock',
                  onTap: onAddStock,
                  isOutlined: false,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// WIDGET — StockStatusBadge
// ══════════════════════════════════════════════════════════════════════════════
///
/// Colored pill badge derived from [StockStatus].
/// Automatically picks background + text color from design tokens.
///
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
        bg = AppColors.wellStockedBg;
        fg = AppColors.wellStockedText;
        label = 'Well Stocked';
        break;
      case StockStatus.inStock:
        bg = AppColors.inStockBg;
        fg = AppColors.inStockText;
        label = 'In Stock';
        break;
      case StockStatus.lowStock:
        bg = AppColors.lowStockBg;
        fg = AppColors.lowStockText;
        label = 'Low Stock';
        break;
      case StockStatus.outOfStock:
        bg = AppColors.outStockBg;
        fg = AppColors.outStockText;
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

// ══════════════════════════════════════════════════════════════════════════════
// WIDGET — InventoryActionButton
// ══════════════════════════════════════════════════════════════════════════════
///
/// A full-width button used in [InventoryItemCard].
/// [isOutlined] = true → bordered ghost button (Reduce).
/// [isOutlined] = false → filled primary button (Add Stock).
///
class InventoryActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final bool isOutlined;

  const InventoryActionButton({
    super.key,
    required this.label,
    required this.onTap,
    this.isOutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isOutlined ? AppColors.cardBg : AppColors.primary,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.primary, width: 1.5),
        ),
        child: Text(
          label,
          style: AppTextStyles.buttonLabel.copyWith(
            color: isOutlined ? AppColors.primary : Colors.white,
          ),
        ),
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// PRIVATE — _InfoColumn (card-internal helper)
// ══════════════════════════════════════════════════════════════════════════════

class _InfoColumn extends StatelessWidget {
  final String label;
  final String value;

  const _InfoColumn({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppTextStyles.infoLabel),
        const SizedBox(height: 3),
        Text(value, style: AppTextStyles.infoValue),
      ],
    );
  }
}
