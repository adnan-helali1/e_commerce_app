import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/orders/data/models/get_active_offers/active_offer_item.dart';
import 'package:B2B/app/features/orders/logic/ui_create_order/ui_create_order_cubit.dart';
import 'package:B2B/app/features/orders/logic/ui_create_order/ui_create_order_state.dart';
import 'package:B2B/app/features/orders/ui/widgets/metrics_row.dart';
import 'package:B2B/app/features/orders/ui/widgets/quantity_textfiled.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActiveOfferSelectionCard extends StatelessWidget {
  final ActiveOfferItem offer;
  final List<ActiveOfferItem> allOffers;

  const ActiveOfferSelectionCard({
    super.key,
    required this.offer,
    required this.allOffers,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UiCreateOrderCubit, UiCreateOrderState>(
      buildWhen: (previous, current) {
        return previous.selectedOffers[offer.id] !=
                current.selectedOffers[offer.id] ||
            previous.quantities[offer.id] != current.quantities[offer.id] ||
            previous.quantityErrors[offer.id] !=
                current.quantityErrors[offer.id];
      },
      builder: (context, state) {
        final isSelected = state.selectedOffers[offer.id] ?? false;
        final quantity = state.quantities[offer.id] ?? 0; // ✅ 0 كـ default
        final error = state.quantityErrors[offer.id];

        return Container(
          margin: EdgeInsets.only(bottom: 12.h),
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: context.appColors.cardBackground,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: error != null
                  ? context.cs.error
                  : context.appColors.borderColor,
              width: error != null ? 1.5 : 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// ✅ Row 1 - Name, Qty, Checkbox
              Row(
                children: [
                  Expanded(
                    child: Text(
                      offer.name,
                      style: TextStyles.button(context),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  // ✅ Quantity Input - الآن في SizedBox
                  QuantityTextField(
                    error: error,
                    quantity: quantity,
                    offer: offer,
                    allOffers: allOffers,
                  ),
                  horizontalSpace(8),
                  // ✅ Max Stock Label
                  SizedBox(
                    width: 60.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (error == null)
                          Text(
                            'Max: ${offer.stock}',
                            style: TextStyle(
                              fontSize: 9.sp,
                              color: context.cs.outline,
                            ),
                          ),
                      ],
                    ),
                  ),
                  horizontalSpace(8),
                  Checkbox(
                    value: isSelected,
                    onChanged: (value) {
                      context.read<UiCreateOrderCubit>().toggleOfferSelection(
                            offer.id,
                            value ?? true,
                          );
                    },
                  ),
                ],
              ),
              verticalSpace(8),

              /// ✅ Supplier Name
              Text(
                offer.supplierName,
                style: TextStyles.fieldText(context),
              ),
              verticalSpace(16),

              /// ✅ Metrics Row
              MetricsRows(offer: offer),
              verticalSpace(16),

              /// ✅ Total Price
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 10.h,
                ),
                decoration: BoxDecoration(
                  color: context.cs.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    Text(
                      'Total Price',
                      style: TextStyles.fieldText(context),
                    ),
                    const Spacer(),
                    Text(
                      quantity > 0
                          ? (quantity * offer.buyPrice).toStringAsFixed(2)
                          : '0.00', // ✅ تجنب null عند quantity = 0
                      style: TextStyles.button(context).copyWith(
                        color: context.cs.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
