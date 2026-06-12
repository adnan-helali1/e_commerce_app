import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_metric.dart';
import 'package:B2B/app/features/orders/data/active_offer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActiveOfferSelectionCard extends StatefulWidget {
  final ActiveOfferItem offer;
  final bool selected;
  final ValueChanged<bool?> onChanged;
  final TextEditingController quantityController;

  const ActiveOfferSelectionCard({
    super.key,
    required this.offer,
    required this.selected,
    required this.onChanged,
    required this.quantityController,
  });

  @override
  State<ActiveOfferSelectionCard> createState() =>
      _ActiveOfferSelectionCardState();
}

class _ActiveOfferSelectionCardState extends State<ActiveOfferSelectionCard> {
  double totalPrice = 0;

  @override
  void initState() {
    super.initState();

    _calculateTotal();

    widget.quantityController.addListener(
      _calculateTotal,
    );
  }

  @override
  void dispose() {
    widget.quantityController.removeListener(
      _calculateTotal,
    );
    super.dispose();
  }

  void _calculateTotal() {
    final quantity = int.tryParse(widget.quantityController.text) ?? 0;

    final calculatedPrice = quantity * widget.offer.buyPrice;

    if (calculatedPrice != totalPrice) {
      setState(() {
        totalPrice = calculatedPrice;
      });
    }
  }

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.offer.name,
                  style: TextStyles.button(context),
                ),
              ),
              SizedBox(
                width: 80.w,
                child: TextFormField(
                  controller: widget.quantityController,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    hintText: 'Qty',
                  ),
                ),
              ),
              horizontalSpace(8),
              Checkbox(
                value: widget.selected,
                onChanged: widget.onChanged,
              ),
            ],
          ),
          verticalSpace(8),
          Text(
            widget.offer.supplierName,
            style: TextStyles.fieldText(context),
          ),
          verticalSpace(16),
          Row(
            children: [
              Expanded(
                child: OfferMetric(
                  label: 'Buy Price',
                  value: widget.offer.buyPrice.toString(),
                ),
              ),
              Expanded(
                child: OfferMetric(
                  label: 'Sell Price',
                  value: widget.offer.sellPrice.toString(),
                ),
              ),
              Expanded(
                child: OfferMetric(
                  label: 'Stock',
                  value: widget.offer.stock.toString(),
                ),
              ),
              Expanded(
                child: OfferMetric(
                  label: 'Profit',
                  value: widget.offer.totalProfit.toString(),
                ),
              ),
            ],
          ),
          verticalSpace(16),
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
                  'Total Price To This Order',
                  style: TextStyles.fieldText(context),
                ),
                const Spacer(),
                Text(
                  totalPrice.toStringAsFixed(2),
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
  }
}
