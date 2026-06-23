import 'package:B2B/app/core/widgets/app_shimer.dart';
import 'package:B2B/app/features/offers/logic/offers_cubit/offers_cubit.dart';
import 'package:B2B/app/features/offers/logic/offers_cubit/offers_state.dart';
import 'package:B2B/app/features/offers/ui/widgets/offers_empty.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OffersListSection extends StatelessWidget {
  const OffersListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OffersCubit, OffersState>(
      builder: (context, state) {
        return state.when(
          loading: () => const AppShimmer(),
          success: (response) {
            final offers = response.data;

            if (offers.isEmpty) {
              return const OffersEmptySection();
            }

            return Column(
              children: List.generate(
                offers.length,
                (index) => OfferCard(
                  key: ValueKey(offers[index].id),
                  offer: offers[index],
                ),
              ),
            );
          },
          failure: (error) => Center(child: Text(error)),
          initial: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
