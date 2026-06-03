import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferSearchRow extends StatelessWidget {
  final VoidCallback? onFilterPressed;
  final ValueChanged<String>? onSearchChanged;

  const OfferSearchRow({
    super.key,
    this.onFilterPressed,
    this.onSearchChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.h,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 58.h,
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              decoration: BoxDecoration(
                color: context.cs.surface,
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(color: context.appColors.borderColor),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search_rounded,
                    color: Color(0xff777E8A),
                    size: 25.sp,
                  ),
                  horizontalSpace(10),
                  Expanded(
                    child: TextFormField(
                      onFieldSubmitted: (_) => FocusScope.of(context).unfocus(),
                      textInputAction: TextInputAction.search,
                      onChanged: onSearchChanged,
                      style: TextStyles.fieldText(context).copyWith(
                        fontSize: 15.sp,
                        height: 1.1,
                        fontWeight: FontWeight.w500,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                        hintText: 'Search products or suppliers...',
                        hintStyle: TextStyles.note(context).copyWith(
                          fontSize: 17.sp,
                          height: 1.1,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 97, 103, 112),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          horizontalSpace(8),
          SizedBox(
            width: 52.w,
            height: 58.h,
            child: OutlinedButton(
              onPressed: onFilterPressed,
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                foregroundColor: context.cs.onSurface,
                side: BorderSide(color: context.appColors.borderColor),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.r),
                ),
              ),
              child: Icon(Icons.filter_alt_outlined, size: 20.sp),
            ),
          ),
        ],
      ),
    );
  }
}
