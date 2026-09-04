import 'package:B2B/app/core/helpers/extensions.dart';
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
    final l10n = context.l10n;
    return SummaryHeader(
      height: 200,
      title: l10n.myStoreCatalog,
      stats: [
        SummaryStat(
          icon: Icons.inventory_2_outlined,
          value: '${summary.activeProducts}',
          label: l10n.activeProducts,
          valueFontSize: 27,
        ),
        SummaryStat(
          icon: Icons.attach_money_rounded,
          value: '\$${summary.totalProfit.toStringAsFixed(2)}',
          label: l10n.potentialProfit,
          valueFontSize: 27,
        ),
      ],
    );
  }
}
