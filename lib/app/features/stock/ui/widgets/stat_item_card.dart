import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/stock/ui/screens/full_stock_screen.dart';
import 'package:B2B/app/features/stock/ui/screens/stock_screen.dart';
import 'package:B2B/app/features/stock/ui/widgets/stock_action_button.dart';
import 'package:flutter/material.dart';

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
            color: Colors.black.withOpacity(0.05),
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
                  color: context.cs.primaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.inventory_2_outlined,
                  color: context.cs.surface,
                  size: 22,
                ),
              ),
              const SizedBox(width: 12),

              // Name + supplier
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyles.label(context),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 3),
                    Text(item.supplier,
                        style: TextStyles.label(context).copyWith(
                          color: context.cs.onSurfaceVariant,
                          fontSize: 12,
                        )),
                  ],
                ),
              ),
              const SizedBox(width: 8),

              // Status badge
              StockStatusBadge(status: item.status),
            ],
          ),

          const SizedBox(height: 16),

          // ── Stock level label + count ──────────────────────────────────
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Stock Level', style: TextStyles.button(context)),
              Text(
                '${item.currentStock} / ${item.maxStock} units',
                style: TextStyles.note(context).copyWith(
                  color: context.cs.onSurfaceVariant,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // Progress bar
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: LinearProgressIndicator(
              value: stockPercent,
              minHeight: 8,
              backgroundColor: context.appColors.cardBackground,
              valueColor: AlwaysStoppedAnimation<Color>(context.cs.onPrimary),
            ),
          ),

          const SizedBox(height: 14),

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

          const SizedBox(height: 14),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const SizedBox(height: 14),

          // ── Action buttons ─────────────────────────────────────────────
          Row(
            children: [
              Expanded(
                child: InventoryActionButton(
                  label: '− Reduce',
                  onTap: onReduce,
                  isOutlined: true,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: InventoryActionButton(
                  label: '+ Add Stock',
                  onTap: onAddStock,
                  isOutlined: false,
                ),
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
              fontSize: 12,
            )),
        const SizedBox(height: 3),
        Text(value, style: TextStyles.note(context)),
      ],
    );
  }
}
