import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/orders/data/active_offer_item.dart';
import 'package:B2B/app/features/orders/logic/cubit/get_active_offers_cubit.dart';
import 'package:B2B/app/features/orders/logic/cubit/get_active_offers_state.dart';
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
  final TextEditingController noteController = TextEditingController();

  final Map<int, bool> selectedOffers = {};
  final Map<int, TextEditingController> quantityControllers = {};
  @override
  void initState() {
    super.initState();

    context.read<GetActiveOffersCubit>().getActiveOffers();
  }

  double calculateTotalPrice(List<ActiveOfferItem> offers) {
    double total = 0;

    for (final offer in offers) {
      if (!(selectedOffers[offer.id] ?? true)) continue;

      final quantity = int.tryParse(
            quantityControllers[offer.id]?.text ?? '1',
          ) ??
          1;

      total += quantity * offer.buyPrice;
    }

    return total;
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

              for (final offer in offers) {
                selectedOffers.putIfAbsent(
                  offer.id,
                  () => true,
                );
              }

              return Padding(
                padding: EdgeInsets.all(16.w),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: offers.length,
                        itemBuilder: (_, index) {
                          final offer = offers[index];
                          quantityControllers.putIfAbsent(
                            offer.id,
                            () => TextEditingController(text: '1'),
                          );
                          return ActiveOfferSelectionCard(
                            offer: offer,
                            selected: selectedOffers[offer.id] ?? true,
                            quantityController: quantityControllers[offer.id]!,
                            onChanged: (value) {
                              setState(() {
                                selectedOffers[offer.id] = value ?? true;
                              });
                            },
                          );
                        },
                      ),
                    ),
                    verticalSpace(16),
                    Container(
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
                            style: TextStyles.button(context).copyWith(
                              color: context.cs.primary,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            calculateTotalPrice(offers).toStringAsFixed(2),
                            style: TextStyles.button(context).copyWith(
                              color: context.cs.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    verticalSpace(16),
                    TextFormField(
                      controller: noteController,
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: 'Order note',
                      ),
                    ),
                    verticalSpace(16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          final selectedIds = selectedOffers.entries
                              .where(
                                (e) => e.value,
                              )
                              .map(
                                (e) => e.key,
                              )
                              .toList();

                          /// submit order
                        },
                        child: const Text(
                          'Create Order',
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
