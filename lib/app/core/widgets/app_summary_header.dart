import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SummaryHeader extends StatelessWidget {
  final String title;
  final String? subtitle;
  final List<SummaryStat> stats;
  final double? height;
  final bool isWelcome; // للـ welcome panel
  final VoidCallback? onActionButton1;
  final VoidCallback? onActionButton2;
  final String? actionButton1Label;
  final String? actionButton2Label;
  final IconData? actionButton1Icon;
  final IconData? actionButton2Icon;

  const SummaryHeader({
    super.key,
    required this.title,
    this.subtitle,
    required this.stats,
    this.height,
    this.isWelcome = false,
    this.onActionButton1,
    this.onActionButton2,
    this.actionButton1Label,
    this.actionButton2Label,
    this.actionButton1Icon,
    this.actionButton2Icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
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
        mainAxisAlignment:
            height != null ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.screenTitle(context).copyWith(
              color: context.cs.onPrimary,
              fontSize: isWelcome ? 24.sp : 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          if (subtitle != null) ...[
            verticalSpace(4),
            Text(
              subtitle!,
              style: TextStyles.note(context).copyWith(
                color: context.cs.onPrimary.withValues(alpha: 0.92),
                fontSize: 13.sp,
              ),
            ),
          ],
          verticalSpace(height != null ? 22 : 14),
          if (!isWelcome)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < stats.length; i++) ...[
                  if (i > 0) horizontalSpace(20),
                  Expanded(
                    child: _StatTile(
                      icon: stats[i].icon,
                      value: stats[i].value,
                      label: stats[i].label,
                      valueFontSize: stats[i].valueFontSize,
                    ),
                  ),
                ]
              ],
            )
          else
            // ✅ للـ welcome panel - action buttons
            Row(
              children: [
                Expanded(
                  child: _ActionButton(
                    icon: actionButton1Icon ?? Icons.local_offer_outlined,
                    label: actionButton1Label ?? 'Browse Offers',
                    onTap: onActionButton1 ?? () {},
                  ),
                ),
                horizontalSpace(8),
                Expanded(
                  child: _ActionButton(
                    icon: actionButton2Icon ?? Icons.trending_up_rounded,
                    label: actionButton2Label ?? 'Quick Sale',
                    onTap: onActionButton2 ?? () {},
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class SummaryStat {
  final IconData icon;
  final String value;
  final String label;
  final double? valueFontSize;

  SummaryStat({
    required this.icon,
    required this.value,
    required this.label,
    this.valueFontSize,
  });
}

/// ✅ Stat Tile
class _StatTile extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final double? valueFontSize;

  const _StatTile({
    required this.icon,
    required this.value,
    required this.label,
    this.valueFontSize,
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
          Icon(
            icon,
            color: context.cs.onPrimary.withValues(alpha: 0.85),
            size: 20.sp,
          ),
          verticalSpace(8),
          Text(
            value,
            style: TextStyles.screenTitle(context).copyWith(
              color: context.cs.onPrimary,
              fontSize: valueFontSize ?? 27.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            label,
            style: TextStyles.note(context).copyWith(
              color: context.cs.onPrimary.withValues(alpha: 0.9),
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

/// ✅ Action Button للـ welcome
class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onTap,
      icon: Icon(icon, size: 16.sp),
      label: Text(
        label,
        overflow: TextOverflow.fade,
        style: TextStyles.button(context).copyWith(fontSize: 16.sp),
      ),
      style: OutlinedButton.styleFrom(
        foregroundColor: context.cs.onPrimaryContainer,
        side: BorderSide(color: context.cs.onPrimary.withValues(alpha: 0.45)),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
      ),
    );
  }
}
