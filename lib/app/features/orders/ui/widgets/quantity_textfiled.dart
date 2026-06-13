import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/orders/data/models/get_active_offers/active_offer_item.dart';
import 'package:B2B/app/features/orders/logic/ui_create_order/ui_create_order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuantityTextField extends StatefulWidget {
  final String? error;
  final int quantity;
  final ActiveOfferItem offer;
  final List<ActiveOfferItem> allOffers;

  const QuantityTextField({
    super.key,
    required this.error,
    required this.quantity,
    required this.offer,
    required this.allOffers,
  });

  @override
  State<QuantityTextField> createState() => _QuantityTextFieldState();
}

class _QuantityTextFieldState extends State<QuantityTextField> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    // ✅ استخدم TextEditingController
    controller = TextEditingController(
      text: widget.quantity > 0 ? widget.quantity.toString() : '',
    );
  }

  @override
  void didUpdateWidget(QuantityTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    // ✅ تحدّث الـ controller عند تغيير quantity من parent
    if (oldWidget.quantity != widget.quantity && widget.quantity > 0) {
      controller.text = widget.quantity.toString();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w, // ✅ حدد العرض!
      child: TextFormField(
        controller: controller,
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
          errorText: widget.error,
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
              color:
                  widget.error != null ? context.cs.error : context.cs.primary,
              width: 1.5,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.r),
            borderSide: BorderSide(
              color: widget.error != null
                  ? context.cs.error
                  : context.appColors.borderColor,
              width: widget.error != null ? 1.5 : 1,
            ),
          ),
        ),
        onChanged: (value) {
          final qty = int.tryParse(value) ?? 0;
          context.read<UiCreateOrderCubit>().updateQuantity(
                widget.offer.id,
                qty,
                widget.allOffers,
              );
        },
      ),
    );
  }
}
