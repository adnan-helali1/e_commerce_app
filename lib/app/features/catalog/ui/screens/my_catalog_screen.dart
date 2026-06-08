import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_center_row.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_product_card.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_search_field.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_summary_header.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_ui_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCatalogScreen extends StatefulWidget {
  const MyCatalogScreen({super.key});

  @override
  State<MyCatalogScreen> createState() => _MyCatalogScreenState();
}

class _MyCatalogScreenState extends State<MyCatalogScreen> {
  bool activeOnly = false;

  static const _products = [
    CatalogProductUiModel(
      name: 'Premium Organic Milk',
      supplier: 'GreenFarm Suppliers',
      buyPrice: '\$2.35',
      sellPrice: '\$3.99',
      stock: '180',
      profit: '+ \$1.64 (69.8%)',
    ),
    CatalogProductUiModel(
      name: 'Whole Wheat Bread',
      supplier: 'BakeMaster Ltd.',
      buyPrice: '\$1.80',
      sellPrice: '\$2.99',
      stock: '65',
      profit: '+ \$1.19 (66.1%)',
    ),
    CatalogProductUiModel(
      name: 'Free Range Eggs',
      supplier: 'FreshDairy Co.',
      buyPrice: '\$4.20',
      sellPrice: '\$6.49',
      stock: '45',
      profit: '+ \$2.29 (54.5%)',
    ),
    CatalogProductUiModel(
      name: 'Greek Yogurt 500g',
      supplier: 'GreenFarm Suppliers',
      buyPrice: '\$3.50',
      sellPrice: '\$5.49',
      stock: '120',
      profit: '+ \$1.99 (56.9%)',
      isActive: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final visibleProducts = activeOnly
        ? _products.where((product) => product.isActive).toList()
        : _products;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CatalogSummaryHeader(),
              verticalSpace(12),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: const CatalogSearchField(hintText: 'Search catalog...'),
              ),
              verticalSpace(10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    Expanded(
                      child: _ActiveOnlyFilter(
                        value: activeOnly,
                        onChanged: (value) =>
                            setState(() => activeOnly = value),
                      ),
                    ),
                    horizontalSpace(8),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.add,
                          size: 16.sp, color: context.cs.onPrimary),
                      label: Text(
                        'Add Product',
                        style: TextStyles.button(context)
                            .copyWith(fontSize: 13.sp),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.cs.primary,
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.w, vertical: 0.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(3.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(15),
              CatalogSummaryCenter(visibleProducts: visibleProducts),
              verticalSpace(10),
              ...visibleProducts.map((product) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7.0, vertical: 6.0),
                    child: CatalogProductCard(product: product),
                  )),
              verticalSpace(24),
            ],
          ),
        ),
      ),
    );
  }
}

class _ActiveOnlyFilter extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const _ActiveOnlyFilter({
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(!value),
      borderRadius: BorderRadius.circular(6.r),
      child: Container(
        height: 47.h,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        decoration: BoxDecoration(
          color: context.cs.surface,
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(color: context.appColors.borderColor),
        ),
        child: Row(
          children: [
            Checkbox(
              value: value,
              onChanged: (checked) => onChanged(checked ?? false),
              visualDensity: VisualDensity.compact,
            ),
            Expanded(
              child: Text(
                'Active Only',
                overflow: TextOverflow.ellipsis,
                style: TextStyles.label(context)
                    .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
