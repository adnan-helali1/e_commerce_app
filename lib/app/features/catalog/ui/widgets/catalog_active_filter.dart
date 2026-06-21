import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatalogActiveFilter extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CatalogActiveFilter({
    required this.value,
    required this.onChanged,
    super.key,
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
                    .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
