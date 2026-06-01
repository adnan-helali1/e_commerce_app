import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_card.dart';
import 'package:B2B/app/features/offers/data/offer_empty_state.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_screen_header.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_search_row.dart';
import 'package:B2B/app/features/offers/ui/widgets/offer_summary_row.dart';
import 'package:B2B/app/features/offers/data/offer_ui_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  static const _offers = [
    OfferUiModel(
      name: 'Premium Organic Milk',
      supplier: 'FreshDairy Co.',
      status: 'Available',
      buyPrice: '\$2.50',
      stock: '150',
      category: 'Dairy',
    ),
    OfferUiModel(
      name: 'Premium Organic Milk',
      supplier: 'GreenFarm Suppliers',
      status: 'Available',
      buyPrice: '\$2.35',
      stock: '200',
      category: 'Dairy',
    ),
    OfferUiModel(
      name: 'Whole Wheat Bread',
      supplier: 'BakeMaster Ltd.',
      status: 'Available',
      buyPrice: '\$1.80',
      stock: '80',
      category: 'Bakery',
    ),
    OfferUiModel(
      name: 'Free Range Eggs',
      supplier: 'FreshDairy Co.',
      status: 'Available',
      buyPrice: '\$4.20',
      stock: '60',
      category: 'Eggs',
    ),
    OfferUiModel(
      name: 'Organic Bananas',
      supplier: 'Tropical Import',
      status: 'Unavailable',
      buyPrice: '\$1.20',
      stock: '0',
      category: 'Fruits',
    ),
    OfferUiModel(
      name: 'Greek Yogurt 500g',
      supplier: 'GreenFarm Supplies',
      status: 'Available',
      buyPrice: '\$3.50',
      stock: '120',
      category: 'Dairy',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final availableOffers =
        _offers.where((offer) => offer.status == 'Available').length;

    return SafeArea(
      child: Scaffold(
        backgroundColor: context.cs.surface,
        body: ListView(
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
                totalOffers: _offers.length,
                availableOffers: availableOffers,
              ),
            ),
            verticalSpace(12),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: const OfferSearchRow(),
            ),
            verticalSpace(12),
            ..._offers.map((offer) => OfferCard(offer: offer)),
          ],
        ),
      ),
    );
  }
}
