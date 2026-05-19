import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_search_field.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_ui_models.dart';
import 'package:B2B/app/features/catalog/ui/widgets/supplier_offer_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupplierOffersScreen extends StatelessWidget {
  const SupplierOffersScreen({super.key});

  static const _offers = [
    SupplierOfferUiModel(
      name: 'Premium Organic Milk',
      supplier: 'FreshDairy Co.',
      status: 'Available',
      buyPrice: '\$2.50',
      stock: '150',
      category: 'Dairy',
    ),
    SupplierOfferUiModel(
      name: 'Premium Organic Milk',
      supplier: 'GreenFarm Suppliers',
      status: 'Available',
      buyPrice: '\$2.35',
      stock: '200',
      category: 'Dairy',
    ),
    SupplierOfferUiModel(
      name: 'Whole Wheat Bread',
      supplier: 'BakeMaster Ltd.',
      status: 'Available',
      buyPrice: '\$1.80',
      stock: '80',
      category: 'Bakery',
    ),
    SupplierOfferUiModel(
      name: 'Free Range Eggs',
      supplier: 'FreshDairy Co.',
      status: 'Available',
      buyPrice: '\$4.20',
      stock: '60',
      category: 'Eggs',
    ),
    SupplierOfferUiModel(
      name: 'Organic Bananas',
      supplier: 'Tropical Import',
      status: 'Unavailable',
      buyPrice: '\$1.20',
      stock: '0',
      category: 'Fruits',
    ),
    SupplierOfferUiModel(
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: const CatalogSearchField(
                  hintText: 'Search products or suppliers...',
                  showFilter: true,
                ),
              ),
              verticalSpace(16),
              ..._offers.map((offer) => SupplierOfferCard(offer: offer)),
              verticalSpace(24),
            ],
          ),
        ),
      ),
    );
  }
}
