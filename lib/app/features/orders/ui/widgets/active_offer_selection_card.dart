import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_metric.dart';
import 'package:B2B/app/features/orders/data/active_offer_item.dart';
import 'package:B2B/app/features/orders/logic/create_order/create_order_cubit.dart';
import 'package:B2B/app/features/orders/logic/create_order/create_order_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return BlocBuilder<CreateOrderCubit, CreateOrderState>(
      buildWhen: (previous, current) {
        // ✅ أعد البناء فقط عند تغيير هذا الـ offer
        return previous.selectedOffers[offer.id] !=
                current.selectedOffers[offer.id] ||
            previous.quantities[offer.id] != current.quantities[offer.id] ||
            previous.quantityErrors[offer.id] !=
                current.quantityErrors[offer.id];
      },
      builder: (context, state) {
        final isSelected = state.selectedOffers[offer.id] ?? true;
        final quantity = state.quantities[offer.id] ?? 0;
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
                  // ✅ Quantity Input
                  SizedBox(
                    width: 100.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          initialValue: quantity.toString(),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(5),
                          ],
                          decoration: InputDecoration(
                            hintText: 'Qty',
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                              vertical: 8.h,
                            ),
                            errorText: error,
                            errorStyle: TextStyle(
                              color: context.cs.error,
                              fontSize: 10.sp,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.r),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.r),
                              borderSide: BorderSide(
                                color: error != null
                                    ? context.cs.error
                                    : context.cs.primary,
                                width: 1.5,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6.r),
                              borderSide: BorderSide(
                                color: error != null
                                    ? context.cs.error
                                    : context.appColors.borderColor,
                                width: error != null ? 1.5 : 1,
                              ),
                            ),
                          ),
                          onChanged: (value) {
                            final qty = int.tryParse(value) ?? 0;
                            context.read<CreateOrderCubit>().updateQuantity(
                                  offer.id,
                                  qty,
                                  allOffers,
                                );
                          },
                        ),
                        if (error == null)
                          Padding(
                            padding: EdgeInsets.only(top: 4.h),
                            child: Text(
                              'Max: ${offer.stock}',
                              style: TextStyle(
                                fontSize: 9.sp,
                                color: context.cs.outline,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  horizontalSpace(8),
                  Checkbox(
                    value: isSelected,
                    onChanged: (value) {
                      context.read<CreateOrderCubit>().toggleOfferSelection(
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
                      valueColor: offer.stock < 10 ? Colors.orange : null,
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
                      (quantity * offer.buyPrice).toStringAsFixed(2),
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
