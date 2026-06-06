import 'package:B2B/app/features/offers/data/models/offers_model_response/state_model.dart';
import 'package:B2B/app/features/offers/logic/offers_cubit.dart';
import 'package:B2B/app/features/offers/logic/offers_state.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_summary_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersSummarySection extends StatelessWidget {
  const OffersSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<OffersCubit, OffersState, Stats?>(
      selector: (state) {
        return state.maybeWhen(
          success: (response) => response.stats,
          orElse: () => null,
        );
      },
      builder: (context, stats) {
        if (stats == null) {
          return const SizedBox.shrink();
        }

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: OfferSummaryRow(
            totalOffers: stats.totalOffers,
            availableOffers: stats.availableOffers,
          ),
        );
      },
    );
  }
}
