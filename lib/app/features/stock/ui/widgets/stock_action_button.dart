import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InventoryActionButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final bool isOutlined;

  const InventoryActionButton({
    super.key,
    required this.label,
    required this.onTap,
    this.isOutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.cs.primary,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: context.cs.primary, width: 1.5),
        ),
        child: Text(
          label,
          style:
              TextStyles.label(context).copyWith(color: context.cs.onPrimary),
        ),
      ),
    );
  }
}
