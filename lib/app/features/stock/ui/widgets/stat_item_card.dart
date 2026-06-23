import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/b2b_status_badge.dart';
import 'package:B2B/app/features/stock/data/models/stock_ui_models.dart';
import 'package:B2B/app/features/stock/ui/widgets/stock_action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InventoryItemCard extends StatelessWidget {
  final InventoryItem item;
  final VoidCallback onReduce;
  final VoidCallback onAddStock;

  const InventoryItemCard({
    super.key,
    required this.item,
    required this.onReduce,
    required this.onAddStock,
  });

  @override
  Widget build(BuildContext context) {
    final double stockPercent =
        (item.currentStock / item.maxStock).clamp(0.0, 1.0);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.cardBackground,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: context.appColors.borderColor),
        boxShadow: [
          BoxShadow(
            color: context.appColors.borderColor.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Top row: icon / name / badge ──────────────────────────────
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon container
              Container(
                width: 46,
                height: 46,
                decoration: BoxDecoration(
                  color: context.cs.primary.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.inventory_2_outlined,
                  color: context.cs.surface.withOpacity(0.8),
                  size: 27,
                ),
              ),
              horizontalSpace(12),
              // Name + supplier
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyles.label(context).copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'ID -- ${item.id}',
                      style: TextStyles.label(context).copyWith(
                        color: context.cs.onSurfaceVariant,
                        fontSize: 12.sp,
                      ),
                    ),
                    verticalSpace(3),
                    Text(item.supplier,
                        style: TextStyles.label(context).copyWith(
                          color: context.cs.onSurfaceVariant,
                          fontSize: 12.sp,
                        )),
                  ],
                ),
              ),
              horizontalSpace(8),

              // Status badge
              B2BStatusBadge(
                label: item.status.toString().split('.').last.replaceAllMapped(
                      RegExp(r'([A-Z])'),
                      (match) => ' ${match.group(1)}',
                    ),
                color: b2bStatusColor(
                    context, item.status.toString().split('.').last),
              ),
            ],
          ),

          // ── Stock level label + count ──────────────────────────────────
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Stock Level', style: TextStyles.label(context)),
              Text(
                '${item.currentStock} / ${item.maxStock} units ',
                style: TextStyles.note(context).copyWith(
                  color: context.cs.onSurfaceVariant,
                ),
              ),
            ],
          ),

          // Progress bar
          ClipRRect(
            borderRadius: BorderRadius.circular(6.r),
            child: LinearProgressIndicator(
              value: stockPercent,
              minHeight: 8.h,
              backgroundColor: context.cs.surfaceContainerHighest,
              valueColor: AlwaysStoppedAnimation(b2bStatusColor(
                  context, item.status.toString().split('.').last)),
            ),
          ),
          verticalSpace(12),

          // ── Min Stock + Last Updated ───────────────────────────────────
          Row(
            children: [
              Expanded(
                child: _InfoColumn(
                  label: 'Min Stock',
                  value: '${item.minStock} units',
                ),
              ),
              Expanded(
                child: _InfoColumn(
                  label: 'Last Updated',
                  value: item.lastUpdated,
                ),
              ),
            ],
          ),

          verticalSpace(10),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          verticalSpace(18),

          // ── Action buttons ─────────────────────────────────────────────
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InventoryActionButton(
                label: 'Details',
                onTap: onAddStock,
                isOutlined: true,
              ),
              InventoryActionButton(
                label: '+ Add Stock',
                onTap: onAddStock,
                isOutlined: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoColumn extends StatelessWidget {
  final String label;
  final String value;

  const _InfoColumn({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: TextStyles.label(context).copyWith(
              color: context.cs.onSurfaceVariant,
              fontSize: 12.sp,
            )),
        verticalSpace(3),
        Text(value, style: TextStyles.note(context)),
      ],
    );
  }
}
