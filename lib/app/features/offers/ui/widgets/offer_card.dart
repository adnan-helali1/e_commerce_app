import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/features/offers/data/models/offers_model_response/offer_data_model.dart';
import 'package:B2B/app/features/offers/ui/widgets/add_offer_button.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_metric.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_thumb.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_title_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferCard extends StatelessWidget {
  final OfferData offer;

  const OfferCard({
    required this.offer,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isAvailable = offer.status.toLowerCase() == 'available';

    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: 156.h),
      margin: EdgeInsets.symmetric(horizontal: 24.w).copyWith(bottom: 12.h),
      padding: EdgeInsetsDirectional.fromSTEB(
        18.w,
        14.h,
        12.w,
        14.h,
      ),
      decoration: BoxDecoration(
        color: context.appColors.cardBackground,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: context.appColors.borderColor,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const OfferThumb(),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                OfferTitleRow(offer: offer),
                verticalSpace(18),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: OfferMetric(
                        label: 'Buy\nPrice',
                        value: offer.offerPrice,
                        valueColor: context.cs.primary,
                      ),
                    ),
                    Expanded(
                      child: OfferMetric(
                        label: 'Stock',
                        value: '${offer.offerStock}\nunits',
                      ),
                    ),
                    Expanded(
                      child: OfferMetric(
                        label: 'Category\n',
                        value: offer.supplierProduct.product.category.name,
                      ),
                    ),
                    if (isAvailable) ...[
                      horizontalSpace(10),
                      const AddOfferButton(),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
