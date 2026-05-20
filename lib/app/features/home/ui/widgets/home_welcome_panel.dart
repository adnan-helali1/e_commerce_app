import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeWelcomePanel extends StatelessWidget {
  const HomeWelcomePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180.h,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color.fromARGB(255, 0, 40, 108),
            context.cs.primaryContainer,
            context.cs.primaryContainer.withValues(alpha: 0.95),
            context.cs.primary,
            context.cs.secondaryFixed,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome Back!',
            style: TextStyles.screenTitle(context).copyWith(
              color: context.cs.onPrimary,
              fontSize: 24.sp,
            ),
          ),
          verticalSpace(4),
          Text(
            "Here's your business overview for today",
            style: TextStyles.note(context).copyWith(
              color: context.cs.onPrimary.withValues(alpha: 0.92),
              fontSize: 13.sp,
            ),
          ),
          verticalSpace(22),
          Row(
            children: [
              Expanded(
                child: _WelcomeActionButton(
                  icon: Icons.local_offer_outlined,
                  label: 'Browse Offers',
                  onTap: () {},
                ),
              ),
              horizontalSpace(8),
              Expanded(
                child: _WelcomeActionButton(
                  icon: Icons.trending_up_rounded,
                  label: 'Quick Sale',
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _WelcomeActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _WelcomeActionButton({
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
