import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum LedgerFilter { all, income, expenses }

class LedgerFilterBar extends StatelessWidget {
  final LedgerFilter selected;
  final ValueChanged<LedgerFilter> onChanged;
  final VoidCallback? onExport;

  const LedgerFilterBar({
    super.key,
    required this.selected,
    required this.onChanged,
    this.onExport,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      child: Row(
        children: [
          _FilterChip(
            label: 'All',
            isSelected: selected == LedgerFilter.all,
            onTap: () => onChanged(LedgerFilter.all),
          ),
          horizontalSpace(8),
          _FilterChip(
            label: 'Income',
            isSelected: selected == LedgerFilter.income,
            onTap: () => onChanged(LedgerFilter.income),
          ),
          horizontalSpace(8),
          _FilterChip(
            label: 'Expenses',
            isSelected: selected == LedgerFilter.expenses,
            onTap: () => onChanged(LedgerFilter.expenses),
          ),
          const Spacer(),
          OutlinedButton.icon(
            onPressed: onExport,
            icon: Icon(Icons.download_outlined, size: 16.sp),
            label: Text(
              'Export',
              style: TextStyles.button(context).copyWith(fontSize: 13.sp),
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: context.cs.primary,
              side: BorderSide(color: context.cs.outline),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.r),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 7.h),
        decoration: BoxDecoration(
          color: isSelected ? context.cs.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(8.r),
          border: isSelected
              ? null
              : Border.all(color: context.cs.outline.withValues(alpha: 0.5)),
        ),
        child: Text(
          label,
          style: TextStyles.button(context).copyWith(
            fontSize: 13.sp,
            color: isSelected ? context.cs.onPrimary : context.cs.onSurface,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
