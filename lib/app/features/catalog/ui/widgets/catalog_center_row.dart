import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_ui_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatalogSummaryCenter extends StatelessWidget {
  const CatalogSummaryCenter({super.key, required this.visibleProducts});
  final List<CatalogProductUiModel> visibleProducts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Text(
              '${visibleProducts.length} Products',
              style: TextStyles.note(context).copyWith(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            'Est. Profit: \$475.60',
            style: TextStyles.label(context).copyWith(
              color: context.appColors.success,
              fontSize: 15.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
