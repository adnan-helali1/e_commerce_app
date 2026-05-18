import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/b2b_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeQuickActionsSection extends StatelessWidget {
  const HomeQuickActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: B2BInfoCard(
        padding: EdgeInsets.all(12.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.menu_book_outlined,
                    color: context.cs.primary, size: 18.sp),
                horizontalSpace(6),
                Text('Quick Actions', style: TextStyles.label(context)),
              ],
            ),
            verticalSpace(12),
            Row(
              children: [
                Expanded(
                  child: _QuickActionButton(
                    icon: Icons.menu_book_outlined,
                    label: 'Manage\nCatalog',
                    onTap: () {},
                  ),
                ),
                horizontalSpace(8),
                Expanded(
                  child: _QuickActionButton(
                    icon: Icons.account_balance_wallet_outlined,
                    label: 'View Ledger',
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _QuickActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _QuickActionButton({
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
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: TextStyles.label(context).copyWith(
          color: context.cs.primary,
          fontSize: 12.sp,
        ),
      ),
      style: OutlinedButton.styleFrom(
        foregroundColor: context.cs.primary,
        side: BorderSide(color: context.cs.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.r)),
        padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 8.w),
      ),
    );
  }
}
