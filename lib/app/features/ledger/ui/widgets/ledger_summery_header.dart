import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/ledger/data/models/ledger_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LedgerSummaryHeader extends StatelessWidget {
  final LedgerSummary summary;

  const LedgerSummaryHeader({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            context.cs.primary,
            context.cs.primaryContainer,
            context.cs.primaryContainer,
            context.cs.primaryFixed,
            context.cs.primary,
            context.cs.onSecondary,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Current Balance',
            style: TextStyles.note(context).copyWith(
              color: context.cs.onPrimary.withValues(alpha: 0.85),
              fontSize: 13.sp,
            ),
          ),
          verticalSpace(4),
          Text(
            '\$${summary.balance.toStringAsFixed(2)}',
            style: TextStyles.screenTitle(context).copyWith(
              color: context.cs.onPrimary,
              fontSize: 34.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          verticalSpace(4),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: context.cs.onPrimary.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Text(
              'Net Balance',
              style: TextStyles.note(context).copyWith(
                color: context.cs.onPrimary,
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          verticalSpace(16),
          Row(
            children: [
              Expanded(
                child: _LedgerStatTile(
                  icon: Icons.trending_up_rounded,
                  label: 'Total Income',
                  value: '\$${summary.totalCredits.toStringAsFixed(2)}',
                  valueColor: context.cs.onPrimary,
                ),
              ),
              horizontalSpace(12),
              Expanded(
                child: _LedgerStatTile(
                  icon: Icons.trending_down_rounded,
                  label: 'Total Expenses',
                  value: '\$${summary.totalDebits.toStringAsFixed(2)}',
                  valueColor: context.cs.onPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _LedgerStatTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color valueColor;

  const _LedgerStatTile({
    required this.icon,
    required this.label,
    required this.value,
    required this.valueColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: context.cs.onPrimary.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: context.cs.onPrimary.withValues(alpha: 0.85),
                size: 16.sp,
              ),
              horizontalSpace(6),
              Text(
                label,
                style: TextStyles.note(context).copyWith(
                  color: context.cs.onPrimary.withValues(alpha: 0.85),
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
          verticalSpace(8),
          Text(
            value,
            style: TextStyles.screenTitle(context).copyWith(
              color: valueColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
