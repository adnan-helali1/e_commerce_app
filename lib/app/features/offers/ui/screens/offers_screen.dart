import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/features/catalog/ui/widgets/category_filter.dart';
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
  String _search = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<OffersCubit, OffersState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
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
                        _search = value;

                        context.read<OffersCubit>().load(
                              category: _category,
                              search: value,
                            );
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
                          setState(() {
                            _category =
                                value == 'all' ? 0 : int.tryParse(value) ?? 0;
                          });

                          context.read<OffersCubit>().load(
                                category: _category,
                                search: _search,
                              );
                        },
                        onClose: () {
                          setState(() {
                            _showFilter = false;
                          });
                        },
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
    );
  }
}
