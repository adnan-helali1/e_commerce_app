import 'package:B2B/app/core/helpers/spacing.dart';
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

  @override
  void initState() {
    super.initState();

    context.read<GetActiveOffersCubit>().getActiveOffers();
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

                          return ActiveOfferSelectionCard(
                            offer: offer,
                            selected: selectedOffers[offer.id] ?? true,
                            onChanged: (value) {
                              setState(() {
                                selectedOffers[offer.id] = value ?? true;
                              });
                            },
                          );
                        },
                      ),
                    ),
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
