import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/orders/logic/ui_create_order/ui_create_order_cubit.dart';
import 'package:B2B/app/features/orders/logic/ui_create_order/ui_create_order_state.dart';
import 'package:B2B/app/features/orders/logic/get_offers/get_active_offers_cubit.dart';
import 'package:B2B/app/features/orders/logic/get_offers/get_active_offers_state.dart';

import 'package:B2B/app/features/orders/ui/widgets/active_offer_selection_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateOrderFromOffersScreen extends StatefulWidget {
  const CreateOrderFromOffersScreen({super.key});

  @override
  State<CreateOrderFromOffersScreen> createState() =>
      _CreateOrderFromOffersScreenState();
}

class _CreateOrderFromOffersScreenState
    extends State<CreateOrderFromOffersScreen> {
  late TextEditingController noteController;

  @override
  void initState() {
    super.initState();
    noteController = TextEditingController();
    context.read<GetActiveOffersCubit>().getActiveOffers();
  }

  @override
  void dispose() {
    noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<GetActiveOffersCubit, GetActiveOffersState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(
                child: Center(
                    child: Text(
                  'Loading  Active Offers...',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
              ),
              failure: (error) {
                context.pop();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Failed to load active offers: $error'),
                    backgroundColor: context.cs.error,
                  ),
                );

                return const SizedBox();
              },
              success: (response) {
                final offers = response.data;

                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Select Offers to Create Order',
                          style: TextStyles.note(context).copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700,
                              color: context.cs.primary),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.all(16.w),
                        itemCount: offers.length,
                        itemBuilder: (_, index) {
                          final offer = offers[index];

                          return ActiveOfferSelectionCard(
                            key: ValueKey(offer.id),
                            offer: offer,
                            allOffers: offers,
                          );
                        },
                      ),
                    ),

                    ///  Bottom Section
                    SingleChildScrollView(
                      child: Container(
                        color: context.appColors.cardBackground,
                        padding: EdgeInsets.all(16.w),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ///  Total Price
                            BlocBuilder<UiCreateOrderCubit, UiCreateOrderState>(
                              buildWhen: (previous, current) {
                                return previous.totalPrice !=
                                    current.totalPrice;
                              },
                              builder: (context, state) {
                                return Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(16.w),
                                  decoration: BoxDecoration(
                                    color: context.appColors.cardBackground,
                                    borderRadius: BorderRadius.circular(12.r),
                                    border: Border.all(
                                      color: context.appColors.borderColor,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Total Order Price',
                                        style:
                                            TextStyles.button(context).copyWith(
                                          color: context.cs.primary,
                                        ),
                                      ),
                                      const Spacer(),
                                      Text(
                                        '${state.totalPrice.toStringAsFixed(2)} \$',
                                        style:
                                            TextStyles.button(context).copyWith(
                                          color: context.cs.primary,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),

                            verticalSpace(16),

                            /// ✅ Note TextField
                            TextFormField(
                              controller: noteController,
                              maxLines: 1,
                              onChanged: (value) {
                                context
                                    .read<UiCreateOrderCubit>()
                                    .updateNote(value);
                              },
                              decoration: InputDecoration(
                                hintText: 'Order note',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                              ),
                            ),

                            verticalSpace(16),

                            /// ✅ Submit Button
                            SizedBox(
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
                                onPressed: () {
                                  final cubit =
                                      context.read<UiCreateOrderCubit>();

                                  // ✅ تحقق من الأخطاء من الـ Cubit
                                  if (cubit.hasValidationErrors()) {
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

                                  final selectedIds =
                                      cubit.getSelectedOfferIds();

                                  if (selectedIds.isEmpty) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          'Please select at least one offer',
                                        ),
                                      ),
                                    );
                                    return;
                                  }
                                },
                                child: const Text('Create Order'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
