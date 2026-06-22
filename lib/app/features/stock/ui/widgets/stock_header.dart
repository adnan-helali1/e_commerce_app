import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/stock/ui/widgets/stat_overview_bar.dart';
import 'package:flutter/material.dart';

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
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF2C45CC), Color(0xFF5E38D0)],
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
                  Text('Inventory Overview',
                      style: TextStyles.screenTitle(context)),
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
