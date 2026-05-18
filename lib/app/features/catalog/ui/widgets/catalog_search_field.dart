import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatalogSearchField extends StatelessWidget {
  final String hintText;
  final bool showFilter;

  const CatalogSearchField({
    required this.hintText,
    this.showFilter = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 44.h,
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            decoration: BoxDecoration(
              color: context.cs.surface,
              border: Border.all(color: context.appColors.borderColor),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Row(
              children: [
                Icon(Icons.search,
                    color: context.cs.onSurfaceVariant, size: 18.sp),
                horizontalSpace(8),
                Expanded(
                  child: TextField(
                    style:
                        TextStyles.fieldText(context).copyWith(fontSize: 13.sp),
                    decoration: InputDecoration(
                      hintText: hintText,
                      border: InputBorder.none,
                      hintStyle:
                          TextStyles.note(context).copyWith(fontSize: 12.sp),
                      isDense: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (showFilter) ...[
          horizontalSpace(8),
          SizedBox(
            width: 44.w,
            height: 44.h,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                foregroundColor: context.cs.onSurface,
                side: BorderSide(color: context.appColors.borderColor),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.r)),
              ),
              child: Icon(Icons.filter_alt_outlined, size: 18.sp),
            ),
          ),
        ],
      ],
    );
  }
}
