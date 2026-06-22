import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatOverviewCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final bool isSelected;

  const StatOverviewCard({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
      decoration: BoxDecoration(
        color: isSelected
            ? context.cs.primaryContainer
            : Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(12),
        border: isSelected
            ? Border.all(color: Colors.white.withOpacity(0.25), width: 1)
            : null,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 22.h),
          const SizedBox(height: 6),
          Text(value, style: TextStyles.button(context)),
          const SizedBox(height: 3),
          Text(label,
              style: TextStyles.label(context), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
