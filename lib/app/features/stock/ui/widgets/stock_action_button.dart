import 'package:B2B/app/core/theme/app_colors.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/stock/ui/screens/full_stock_screen.dart'
    hide AppColors;
import 'package:flutter/material.dart';

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
        height: 44,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.primary, width: 1.5),
        ),
        child: Text(
          label,
          style: TextStyles.label(context).copyWith(
            color: isOutlined ? AppColors.primary : Colors.white,
          ),
        ),
      ),
    );
  }
}
