import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/b2b_info_card.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_ui_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatalogProductCard extends StatelessWidget {
  final CatalogProductUiModel product;

  const CatalogProductCard({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final contentColor =
        product.isActive ? context.cs.onSurface : context.cs.onSurfaceVariant;
    final iconColor = product.isActive
        ? context.cs.onSurfaceVariant
        : context.cs.onSurfaceVariant.withValues(alpha: 0.55);

    return Opacity(
      opacity: product.isActive ? 1 : 0.62,
      child: B2BInfoCard(
        margin: EdgeInsets.symmetric(horizontal: 16.w).copyWith(bottom: 12.h),
        padding: EdgeInsets.all(12.r),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ProductThumb(iconColor: iconColor),
              horizontalSpace(18),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyles.label(context).copyWith(
                                  color: contentColor,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              verticalSpace(2),
                              Text(
                                product.supplier,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyles.note(context).copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        _CatalogActions(isActive: product.isActive),
                      ],
                    ),
                    verticalSpace(12),
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: _Metric(
                                label: 'Buy Price',
                                value: product.buyPrice,
                              ),
                            ),
                            SizedBox(width: 18.w),
                            Expanded(
                              child: _Metric(
                                label: 'Sell Price',
                                value: product.sellPrice,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            Expanded(
                              child: _Metric(
                                label: 'Stock',
                                value: '${product.stock} units',
                              ),
                            ),
                            SizedBox(width: 18.w),
                            Expanded(
                              child: _Metric(
                                label: 'Profit/Unit',
                                value: product.profit,
                                isPositive: product.isActive,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductThumb extends StatelessWidget {
  final Color iconColor;

  const _ProductThumb({required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56.r,
      height: 56.r,
      decoration: BoxDecoration(
        color: context.cs.surfaceContainer.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Icon(Icons.inventory_2_outlined, color: iconColor, size: 28.sp),
    );
  }
}

class _CatalogActions extends StatelessWidget {
  final bool isActive;

  const _CatalogActions({required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _IconAction(
          icon: isActive
              ? Icons.power_settings_new_rounded
              : Icons.power_off_rounded,
          color: isActive
              ? context.appColors.success
              : context.cs.onSurfaceVariant,
        ),
        _IconAction(icon: Icons.edit_outlined, color: context.appColors.info),
        _IconAction(
            icon: Icons.delete_outline_rounded, color: context.cs.error),
      ],
    );
  }
}

class _IconAction extends StatelessWidget {
  final IconData icon;
  final Color color;

  const _IconAction({
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 28.r,
      height: 28.r,
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          color: color,
          size: 18.sp,
          fontWeight: FontWeight.w700,
        ),
        padding: EdgeInsets.zero,
      ),
    );
  }
}

class _Metric extends StatelessWidget {
  final String label;
  final String value;
  final bool isPositive;

  const _Metric({
    required this.label,
    required this.value,
    this.isPositive = false,
  });

  @override
  Widget build(BuildContext context) {
    final valueColor =
        isPositive ? context.appColors.success : context.cs.onSurface;

    return SizedBox(
      width: 76.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: TextStyles.note(context)
                  .copyWith(fontSize: 11.sp, fontWeight: FontWeight.w600)),
          verticalSpace(2),
          Text(
            value,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.label(context).copyWith(
              color: valueColor,
              fontSize: isPositive ? 15.sp : 14.sp,
              height: 1.2,
              fontWeight: isPositive ? FontWeight.w800 : FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
