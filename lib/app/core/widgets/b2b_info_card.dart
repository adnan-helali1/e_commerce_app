import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class B2BInfoCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final Border? border;

  const B2BInfoCard({
    required this.child,
    this.padding,
    this.margin,
    this.color,
    this.border,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: margin,
      padding: padding ?? EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: color ?? context.cs.surface,
        border: border ??
            Border.all(
                color: context.cs.outline,
                width: 0.2.r,
                style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: child,
    );
  }
}
