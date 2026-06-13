import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/orders/data/models/create_order/create_order_request.dart';
import 'package:B2B/app/features/orders/data/models/get_active_offers/active_offer_item.dart';
import 'package:B2B/app/features/orders/logic/create_order/create_order_cubit.dart';
import 'package:B2B/app/features/orders/logic/create_order/create_order_state.dart';
import 'package:B2B/app/features/orders/logic/ui_create_order/ui_create_order_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateOrderSection extends StatelessWidget {
  final List<ActiveOfferItem> offers;

  const CreateOrderSection({super.key, required this.offers});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateOrderCubit, CreateOrderState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          success: (response) {
            // ✅ عند النجاح - pop ورسالة
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  '${response.data.createdCount} order(s) created successfully!',
                ),
                backgroundColor: Colors.green,
              ),
            );
            context.pop();
          },
          failure: (error) {
            // ✅ عند الفشل - رسالة خطأ
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error),
                backgroundColor: context.cs.error,
              ),
            );
          },
        );
      },
      child: BlocBuilder<CreateOrderCubit, CreateOrderState>(
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 14.h),
                backgroundColor: context.cs.primary,
                foregroundColor: context.cs.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
              ),
              onPressed: isLoading ? null : () => _onSubmit(context),
              child: isLoading
                  ? SizedBox(
                      height: 20.h,
                      width: 20.h,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: context.cs.onPrimary,
                      ),
                    )
                  : const Text('Create Order'),
            ),
          );
        },
      ),
    );
  }

  void _onSubmit(BuildContext context) {
    final uiCubit = context.read<UiCreateOrderCubit>();

    if (uiCubit.hasValidationErrors()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            'Please fix the quantity errors before submitting',
          ),
          backgroundColor: context.cs.error,
        ),
      );
      return;
    }

    final items = <OrderItemRequest>[];

    for (final offer in offers) {
      final isSelected = uiCubit.state.selectedOffers[offer.id] ?? false;

      if (!isSelected) continue;

      final qty = uiCubit.state.quantities[offer.id] ?? 0;

      if (qty <= 0) continue;

      items.add(
        OrderItemRequest(
          supplierProductId: offer.supplierProductId,
          quantity: qty,
        ),
      );
    }

    if (items.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select at least one item'),
        ),
      );
      return;
    }

    context.read<CreateOrderCubit>().createOrder(items: items);
  }
}
