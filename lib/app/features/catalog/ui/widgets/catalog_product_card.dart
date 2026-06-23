import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/b2b_info_card.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_item_model.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_icons_and_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatalogProductCard extends StatelessWidget {
  final CatalogItem item;

  const CatalogProductCard({
    required this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final contentColor =
        item.isActive ? context.cs.onSurface : context.cs.onSurfaceVariant;
    final iconColor = item.isActive
        ? context.cs.onSurfaceVariant
        : context.cs.onSurfaceVariant.withValues(alpha: 0.55);

    return Opacity(
      opacity: item.isActive ? 1 : 0.62,
      child: Container(
        decoration: BoxDecoration(
          color: context.cs.surface,
          border:
              Border.all(color: context.cs.onSurface.withValues(alpha: 0.1)),
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: [
            BoxShadow(
              color: context.cs.shadow.withValues(alpha: 0.2),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        margin: EdgeInsets.symmetric(horizontal: 16.w).copyWith(bottom: 12.h),
        padding: EdgeInsets.all(12.r),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _ProductThumb(iconColor: iconColor, imageUrl: item.imageUrl),
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
                                item.name,
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
                                item.supplierName,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyles.note(context).copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        CatalogActions(
                          isActive: item.isActive,
                          catalogId: item.id,
                          sellPrice: item.sellPrice,
                        ),
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
                                value: '\$${item.buyPrice.toStringAsFixed(2)}',
                              ),
                            ),
                            SizedBox(width: 18.w),
                            Expanded(
                              child: _Metric(
                                label: 'Sell Price',
                                value: '\$${item.sellPrice.toStringAsFixed(2)}',
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
                                value: '${item.stock} units',
                              ),
                            ),
                            SizedBox(width: 18.w),
                            Expanded(
                              child: _Metric(
                                label: 'Profit/Unit',
                                value:
                                    '\$${item.profitPerUnit.toStringAsFixed(2)}',
                                isPositive: item.isActive,
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
  final String? imageUrl;

  const _ProductThumb({
    required this.iconColor,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56.r,
      height: 56.r,
      decoration: BoxDecoration(
        color: context.cs.surfaceContainer.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(6.r),
      ),
      clipBehavior: Clip.antiAlias,
      child: imageUrl != null && imageUrl!.isNotEmpty
          ? Image.network(
              imageUrl!,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Icon(
                Icons.inventory_2_outlined,
                color: iconColor,
                size: 28.sp,
              ),
            )
          : Icon(Icons.inventory_2_outlined, color: iconColor, size: 28.sp),
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
