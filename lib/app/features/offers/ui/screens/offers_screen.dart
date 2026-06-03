import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
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
  bool _showFilter = false;

  int _category = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => context.read<OffersCubit>().refresh(),
        child: BlocBuilder<OffersCubit, OffersState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => Padding(
                padding: EdgeInsets.all(16),
                child: Center(
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ),
              ),
              failure: (error) => Center(
                child: Text(error),
              ),
              success: (data) {
                final offers = data.data;

                return ListView(
                  padding: EdgeInsets.only(bottom: 112.h),
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: const OfferScreenHeader(),
                    ),
                    verticalSpace(10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: OfferSummaryRow(
                        totalOffers: data.stats.totalOffers,
                        availableOffers: data.stats.availableOffers,
                      ),
                    ),
                    verticalSpace(12),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: OfferSearchRow(
                        onFilterPressed: () {
                          setState(() {
                            _showFilter = !_showFilter;
                          });
                        },
                        onSearchChanged: (value) {
                          context.read<OffersCubit>().search(value);
                        },
                      ),
                    ),
                    if (_showFilter) ...[
                      verticalSpace(12),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: CategoryFilter(
                          categories: const [
                            'all',
                            'Dairy',
                            'Bakery',
                            'Fruits',
                            'Eggs',
                          ],
                          onCategorySelected: (value) {
                            final categoryMap = {
                              'all': 0,
                              'Beverages': 1,
                              'Snacks': 2,
                            };

                            final selectedCategory = categoryMap[value] ?? 0;

                            setState(() {
                              _category = selectedCategory;
                            });

                            context
                                .read<OffersCubit>()
                                .filterByCategory(selectedCategory);
                          },
                        ),
                      ),
                      if (offers.isEmpty)
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(40),
                            child: Column(
                              children: [
                                Icon(Icons.search_off,
                                    size: 60, color: Colors.grey),
                                verticalSpace(10),
                                Text(
                                  'No results found',
                                  style: TextStyles.label(context),
                                ),
                                verticalSpace(6),
                                Text(
                                  'Try different keywords',
                                  style: TextStyles.note(context),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                    verticalSpace(12),
                    ...offers.map(
                      (offer) => OfferCard(
                        offer: offer,
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
