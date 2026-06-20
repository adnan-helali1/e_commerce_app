import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/ledger/data/models/ledger_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LedgerEntryTile extends StatelessWidget {
  final LedgerEntry entry;

  const LedgerEntryTile({super.key, required this.entry});

  bool get _isCredit => entry.type == EntryType.credit;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: context.cs.surface,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: context.cs.outline.withValues(alpha: 0.15),
        ),
        boxShadow: [
          BoxShadow(
            color: context.cs.shadow.withValues(alpha: 0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Icon badge
          Container(
            width: 38.r,
            height: 38.r,
            decoration: BoxDecoration(
              color: _isCredit
                  ? context.cs.primaryContainer.withValues(alpha: 0.35)
                  : context.cs.errorContainer.withValues(alpha: 0.35),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              _isCredit
                  ? Icons.arrow_outward_rounded
                  : Icons.arrow_downward_rounded,
              size: 18.sp,
              color: _isCredit ? context.cs.primary : context.cs.error,
            ),
          ),
          horizontalSpace(12),

          // Title + meta
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _label,
                  style: TextStyles.button(context).copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: context.cs.onSurface,
                  ),
                ),
                verticalSpace(2),
                Text(
                  'Ref. ${entry.sourceType.toUpperCase()}-${entry.sourceId.toString().padLeft(3, '0')}',
                  style: TextStyles.note(context).copyWith(
                    fontSize: 11.sp,
                    color: context.cs.onSurface.withValues(alpha: 0.5),
                  ),
                ),
                verticalSpace(4),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      size: 11.sp,
                      color: context.cs.onSurface.withValues(alpha: 0.45),
                    ),
                    horizontalSpace(4),
                    //   Text(
                    //  //   .format('yyyy-MM-dd').format(entry.occurredAt),
                    //     style: TextStyles.note(context).copyWith(
                    //       fontSize: 11.sp,
                    //       color: context.cs.onSurface.withValues(alpha: 0.45),
                    //     ),
                    //   ),
                  ],
                ),
              ],
            ),
          ),

          // Amount + notes
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${_isCredit ? '+' : '-'}\$${entry.amount}',
                style: TextStyles.screenTitle(context).copyWith(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                  color: _isCredit ? context.cs.primary : context.cs.error,
                ),
              ),
              if (entry.notes != null) ...[
                verticalSpace(4),
                Text(
                  entry.notes!,
                  style: TextStyles.note(context).copyWith(
                    fontSize: 10.sp,
                    color: context.cs.onSurface.withValues(alpha: 0.45),
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  String get _label => _isCredit ? 'Credit' : 'Debit';
}
