import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersSummaryHeader extends StatelessWidget {
  const OrdersSummaryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            context.cs.primary,
            context.cs.primary.withValues(alpha: 0.78),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Purchase Orders',
            style: TextStyles.label(context).copyWith(
              color: context.cs.onPrimary,
              fontSize: 17.sp,
            ),
          ),
          verticalSpace(16),
          Row(
            children: [
              Expanded(
                child: _SummaryTile(
                  icon: Icons.schedule_rounded,
                  value: '1',
                  label: 'Pending Approval',
                ),
              ),
              horizontalSpace(12),
              Expanded(
                child: _SummaryTile(
                  icon: Icons.inventory_2_outlined,
                  value: '\$712',
                  label: 'Total Value',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _SummaryTile extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const _SummaryTile({
    required this.icon,
    required this.value,
    required this.label,
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
          Icon(icon,
              color: context.cs.onPrimary.withValues(alpha: 0.85), size: 20.sp),
          verticalSpace(8),
          Text(
            value,
            style: TextStyles.screenTitle(context).copyWith(
              color: context.cs.onPrimary,
              fontSize: 24.sp,
            ),
          ),
          Text(
            label,
            style: TextStyles.note(context).copyWith(
              color: context.cs.onPrimary.withValues(alpha: 0.9),
              fontSize: 11.sp,
            ),
          ),
        ],
      ),
    );
  }
}
