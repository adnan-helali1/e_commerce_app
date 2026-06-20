import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/ledger/data/models/ledger_response.dart';
import 'package:B2B/app/features/ledger/ui/widgets/ledger_entry_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LedgerTransactionList extends StatelessWidget {
  final List<LedgerEntry> entries;

  const LedgerTransactionList({super.key, required this.entries});

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction History',
                  style: TextStyles.screenTitle(context).copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: context.cs.onSurface,
                  ),
                ),
                Text(
                  '${entries.length} entries',
                  style: TextStyles.note(context).copyWith(
                    fontSize: 12.sp,
                    color: context.cs.onSurface.withValues(alpha: 0.5),
                  ),
                ),
              ],
            ),
          ),
        ),
        entries.isEmpty
            ? SliverToBoxAdapter(child: _EmptyState())
            : SliverList.separated(
                itemCount: entries.length,
                separatorBuilder: (_, __) => verticalSpace(0),
                itemBuilder: (context, index) =>
                    LedgerEntryTile(entry: entries[index]),
              ),
        SliverToBoxAdapter(child: verticalSpace(24)),
      ],
    );
  }
}

class _EmptyState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 48.h),
      child: Column(
        children: [
          Icon(
            Icons.receipt_long_outlined,
            size: 48.sp,
            color: context.cs.onSurface.withValues(alpha: 0.25),
          ),
          verticalSpace(12),
          Text(
            'No transactions yet',
            style: TextStyles.button(context).copyWith(
              fontSize: 14.sp,
              color: context.cs.onSurface.withValues(alpha: 0.45),
            ),
          ),
        ],
      ),
    );
  }
}
