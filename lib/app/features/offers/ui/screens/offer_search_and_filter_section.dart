import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/features/offers/logic/offers_cubit.dart';
import 'package:B2B/app/features/offers/logic/offers_ui_cubit.dart';
import 'package:B2B/app/features/offers/ui/widgets/category_filter.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_search_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferSearchAndFilterSection extends StatelessWidget {
  const OfferSearchAndFilterSection({super.key});

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
    return BlocProvider(
      create: (context) => OffersUiCubit(),
      child: BlocBuilder<OffersUiCubit, OffersUiState>(
        builder: (context, state) {
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: OfferSearchRow(
                  onFilterPressed: () {
                    context.read<OffersUiCubit>().toggleFilter();
                  },
                  onSearchChanged: context.read<OffersCubit>().search,
                ),
              ),
              if (state.showFilter) ...[
                verticalSpace(12),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: CategoryFilter(
                    selectedCategory: state.selectedCategory,
                    categories: const [
                      'All',
                      'Beverages',
                      'Snacks',
                      'Fruits',
                      'Vegetables',
                      'Dairy',
                      'Eggs',
                    ],
                    onCategorySelected: (value) {
                      context.read<OffersUiCubit>().selectCategory(value);

                      context.read<OffersCubit>().filterByCategory(
                            categoryMap[value] ?? 0,
                          );
                    },
                  ),
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
