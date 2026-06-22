import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InventorySearchBar extends StatelessWidget {
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const InventorySearchBar({super.key, this.controller, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      decoration: BoxDecoration(
        color: context.cs.surfaceVariant,
        borderRadius: BorderRadius.circular(12),
        border:
            Border.all(color: context.cs.primary.withOpacity(0.25), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        style: TextStyle(fontSize: 14.sp, color: AppColors.blueCardDark),
        decoration: InputDecoration(
          hintText: 'Search inventory...',
          hintStyle: TextStyle(color: AppColors.blueCardDark, fontSize: 15.sp),
          prefixIcon: Icon(Icons.search_rounded,
              color: AppColors.blueCardDark, size: 26.sp),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 14.r),
        ),
      ),
    );
  }
}
