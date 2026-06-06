import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/features/offers/ui/screens/offer_search_and_filter_section.dart';
import 'package:B2B/app/features/offers/ui/screens/offers_list_section.dart';
import 'package:B2B/app/features/offers/ui/screens/offers_summery_section.dart';
import 'package:B2B/app/features/offers/logic/offers_cubit.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_screen_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;

        context.pushNamedAndRemoveUntil(
          Routes.homescreen,
          predicate: (_) => false,
        );
      },
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: context.read<OffersCubit>().refresh,
          child: ListView(
            padding: EdgeInsets.only(bottom: 112.h),
            children: [
              const OfferScreenHeader(),
              verticalSpace(10),
              OffersSummarySection(),
              verticalSpace(12),
              OfferSearchAndFilterSection(),
              verticalSpace(12),
              const OffersListSection(),
            ],
          ),
        ),
      ),
    );
  }
}
