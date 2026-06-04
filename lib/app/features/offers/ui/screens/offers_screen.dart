import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/offers/ui/screens/offers_list_section.dart';
import 'package:B2B/app/features/offers/ui/screens/offers_summery_section.dart';
import 'package:B2B/app/features/offers/ui/widgets/category_filter.dart';
import 'package:B2B/app/features/offers/logic/offers_cubit.dart';
import 'package:B2B/app/features/offers/logic/offers_state.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_card.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_screen_header.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_search_row.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_summary_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersScreen extends StatefulWidget {
  const OffersScreen({super.key});

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  bool showFilter = false;
  String selectedCategory = 'All';

  static const categoryMap = {
    'All': 0,
    'Beverages': 1,
    'Snacks': 2,
    'Fruits': 3,
    'Vegetables': 4,
    'Dairy': 5,
    'Eggs': 6,
  };

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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: const OfferScreenHeader(),
              ),
              verticalSpace(10),
              OffersSummarySection(),
              verticalSpace(12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: OfferSearchRow(
                  onFilterPressed: () {
                    setState(() {
                      showFilter = !showFilter;
                    });
                  },
                  onSearchChanged: context.read<OffersCubit>().search,
                ),
              ),
              if (showFilter) ...[
                verticalSpace(12),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: CategoryFilter(
                    selectedCategory: selectedCategory,
                    categories: const [
                      'All',
                      'Beverages',
                      'Snacks',
                      'Fruits',
                      'Vegetables',
                      'Dairy',
                      'Eggs'
                    ],
                    onCategorySelected: (value) {
                      setState(() {
                        selectedCategory = value;
                      });

                      context.read<OffersCubit>().filterByCategory(
                            categoryMap[value] ?? 0,
                          );
                    },
                  ),
                ),
              ],
              verticalSpace(12),
              const OffersListSection(),
            ],
          ),
        ),
      ),
    );
  }
}
