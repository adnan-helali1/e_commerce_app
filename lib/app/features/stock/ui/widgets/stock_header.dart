import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/widgets/app_summary_header.dart';
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
    final l10n = context.l10n;
    return SummaryHeader(
      height: 200,
      title: l10n.inventoryOverview,
      titleIcon: Icons.inventory_2_outlined,
      useSafeArea: true,
      selectedStatIndex: selectedStatIndex,
      stats: [
        SummaryStat(
          icon: Icons.inventory_2_outlined,
          value: totalItems.toString(),
          label: l10n.totalItems,
        ),
        SummaryStat(
          icon: Icons.warning_amber_outlined,
          value: lowStock.toString(),
          label: l10n.lowStock,
        ),
        SummaryStat(
          icon: Icons.show_chart_rounded,
          value: outOfStock.toString(),
          label: l10n.outOfStock,
        ),
      ],
    );
  }
}
