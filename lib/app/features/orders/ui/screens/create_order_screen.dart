import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/orders/logic/create_order/create_order_cubit.dart';
import 'package:B2B/app/features/orders/logic/create_order/create_order_state.dart';
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
    return Scaffold(
      body: BlocBuilder<GetActiveOffersCubit, GetActiveOffersState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            failure: (error) => Center(
              child: Text(error),
            ),
            success: (response) {
              final offers = response.data;

              return Column(
                children: [
                  /// ✅ ListView
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
                          // ✅ احذف selected و quantity - الـ Widget يأخذهم من Cubit
                        );
                      },
                    ),
                  ),

                  /// ✅ Bottom Section
                  SingleChildScrollView(
                    child: Container(
                      color: context.appColors.cardBackground,
                      padding: EdgeInsets.all(16.w),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          /// ✅ Total Price
                          BlocBuilder<CreateOrderCubit, CreateOrderState>(
                            buildWhen: (previous, current) {
                              return previous.totalPrice != current.totalPrice;
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
                            maxLines: 3,
                            onChanged: (value) {
                              context
                                  .read<CreateOrderCubit>()
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
                              onPressed: () {
                                final cubit = context.read<CreateOrderCubit>();

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

                                final selectedIds = cubit.getSelectedOfferIds();

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

                                // ✅ جيب البيانات من الـ Cubit state
                                final quantities = cubit.state.quantities;
                                final totalPrice = cubit.state.totalPrice;
                                final note = cubit.state.note;

                                _submitOrder(
                                  context,
                                  selectedIds,
                                  quantities,
                                  totalPrice,
                                  note,
                                );
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
    );
  }

  Future<void> _submitOrder(
    BuildContext context,
    List<int> selectedIds,
    Map<int, int> quantities,
    double totalPrice,
    String note,
  ) async {
    print('=== Order Submission ===');
    print('Selected Offer IDs: $selectedIds');
    print('Quantities: $quantities');
    print('Total Price: $totalPrice');
    print('Note: $note');

    // TODO: Call API to submit order
  }
}
