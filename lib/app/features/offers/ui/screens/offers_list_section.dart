import 'package:B2B/app/features/offers/data/models/offers_mode_response/offer_data_model.dart';
import 'package:B2B/app/features/offers/logic/offers_cubit.dart';
import 'package:B2B/app/features/offers/logic/offers_state.dart';
import 'package:B2B/app/features/offers/ui/widgets/offers_empty.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OffersListSection extends StatelessWidget {
  const OffersListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<OffersCubit, OffersState, List<OfferData>>(
      selector: (state) {
        return state.maybeWhen(
          success: (response) => response.data,
          orElse: () => const [],
        );
      },
      builder: (context, offers) {
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
    );
  }
}
