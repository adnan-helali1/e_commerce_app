import 'package:flutter/material.dart';
import 'package:e_commerce_app/app/core/helpers/extensions.dart';
import 'package:e_commerce_app/app/core/theme/textstyles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Field extends StatelessWidget {
  const Field({
    required this.context,
    required this.hintText,
    required this.icon,
    this.keyboardType,
    this.obscureText = false,
  });

  final BuildContext context;
  final String hintText;
  final IconData icon;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: TextStyles.fieldText(this.context),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: this.context.cs.onSurfaceVariant),
        prefixIcon: Icon(icon, color: this.context.cs.onSurfaceVariant),
        filled: true,
        fillColor: this.context.cs.surface,
        contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 14.w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: BorderSide(color: this.context.appColors.borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: BorderSide(color: this.context.appColors.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.r),
          borderSide: BorderSide(color: this.context.cs.primary, width: 1.4),
        ),
      ),
    );
  }
}
