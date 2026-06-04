import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/b2b_status_badge.dart';
import 'package:B2B/app/features/offers/data/models/offers_mode_response/offer_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferTitleRow extends StatelessWidget {
  final OfferData offer;

  const OfferTitleRow({
    required this.offer,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                offer.supplierProduct.product.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.label(context).copyWith(
                  fontSize: 18.sp,
                  height: 1.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              verticalSpace(4),
              Text(
                offer.supplierProduct.supplier.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.note(context).copyWith(
                  fontSize: 13.sp,
                  height: 1.1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        horizontalSpace(8),
        B2BStatusBadge(
          label: offer.status.toUpperCase().substring(0),
          color: b2bStatusColor(
            context,
            offer.status,
          ),
        ),
      ],
    );
  }
}
