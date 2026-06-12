import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_metric.dart';
import 'package:B2B/app/features/orders/data/active_offer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActiveOfferSelectionCard extends StatelessWidget {
  final ActiveOfferItem offer;
  final bool selected;
  final ValueChanged<bool?> onChanged;

  const ActiveOfferSelectionCard({
    super.key,
    required this.offer,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: context.appColors.cardBackground,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: context.appColors.borderColor,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  offer.name,
                  style: TextStyles.button(context),
                ),
              ),
              Checkbox(
                value: selected,
                onChanged: onChanged,
              ),
            ],
          ),
          verticalSpace(8),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              offer.supplierName,
              style: TextStyles.fieldText(context),
            ),
          ),
          verticalSpace(16),
          Row(
            children: [
              Expanded(
                child: OfferMetric(
                  label: 'Buy Price',
                  value: offer.buyPrice.toString(),
                ),
              ),
              Expanded(
                child: OfferMetric(
                  label: 'Sell Price',
                  value: offer.sellPrice.toString(),
                ),
              ),
              Expanded(
                child: OfferMetric(
                  label: 'Stock',
                  value: offer.stock.toString(),
                ),
              ),
              Expanded(
                child: OfferMetric(
                  label: 'Profit',
                  value: offer.totalProfit.toString(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
