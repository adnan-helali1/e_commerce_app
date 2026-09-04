import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/widgets/offer_metric.dart';
import 'package:B2B/app/features/orders/data/models/get_active_offers/active_offer_item.dart';
import 'package:flutter/material.dart';

class MetricsRows extends StatelessWidget {
  final ActiveOfferItem offer;
  const MetricsRows({super.key, required this.offer});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: OfferMetric(
            label: context.l10n.buyPrice,
            value: offer.buyPrice.toString(),
          ),
        ),
        Expanded(
          child: OfferMetric(
            label: context.l10n.sellPrice,
            value: offer.sellPrice.toString(),
          ),
        ),
        Expanded(
          child: OfferMetric(
            label: context.l10n.stock,
            value: offer.stock.toString(),
            valueColor: offer.stock < 10 ? Colors.orange : null,
          ),
        ),
        Expanded(
          child: OfferMetric(
            label: context.l10n.profit,
            value: offer.totalProfit.toString(),
          ),
        ),
      ],
    );
  }
}
