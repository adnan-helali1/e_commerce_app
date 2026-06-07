import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatalogSummaryHeader extends StatelessWidget {
  const CatalogSummaryHeader({super.key});

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
        children: [
          Text(
            'My Store Catalog',
            style: TextStyles.label(context).copyWith(
              color: context.cs.onPrimary,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          verticalSpace(14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: _CatalogStatTile(
                  icon: Icons.inventory_2_outlined,
                  value: '3',
                  label: 'Active Products',
                ),
              ),
              horizontalSpace(20),
              Expanded(
                child: _CatalogStatTile(
                  icon: Icons.attach_money_rounded,
                  value: '\$476',
                  label: 'Potential Profit',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CatalogStatTile extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const _CatalogStatTile({
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
              fontSize: 27.sp,
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
