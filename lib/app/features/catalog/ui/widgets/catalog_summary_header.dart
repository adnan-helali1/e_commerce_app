import 'package:B2B/app/core/widgets/app_summary_header.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_summary_model.dart';
import 'package:flutter/material.dart';

class CatalogSummaryHeader extends StatelessWidget {
  final CatalogSummary summary;

  const CatalogSummaryHeader({
    required this.summary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SummaryHeader(
      title: 'My Store Catalog',
      stats: [
        SummaryStat(
          icon: Icons.inventory_2_outlined,
          value: '${summary.activeProducts}',
          label: 'Active Products',
          valueFontSize: 27,
        ),
        SummaryStat(
          icon: Icons.attach_money_rounded,
          value: '\$${summary.totalProfit.toStringAsFixed(2)}',
          label: 'Potential Profit',
          valueFontSize: 27,
        ),
      ],
    );
  }
}
