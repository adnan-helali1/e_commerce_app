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
          color: context.cs.outline.withValues(alpha: 0.8),
        ),
        boxShadow: [
          BoxShadow(
            color: context.cs.shadow.withValues(alpha: 0.1),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          // Icon badge
          Container(
            width: 45.r,
            height: 45.r,
            decoration: BoxDecoration(
              color: _isCredit
                  ? context.appColors.success.withValues(alpha: 0.17)
                  : context.appColors.failure.withValues(alpha: 0.35),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Icon(
              _isCredit
                  ? Icons.arrow_outward_rounded
                  : Icons.arrow_downward_rounded,
              size: 22.sp,
              fontWeight: FontWeight.w600,
              color: _isCredit
                  ? context.appColors.success
                  : context.appColors.failure,
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
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: context.cs.onSurface,
                  ),
                ),
                verticalSpace(2),
                Text(
                  'Ref. ${entry.sourceType.toUpperCase()}-${entry.sourceId.toString().padLeft(3, '0')}',
                  style: TextStyles.note(context).copyWith(
                    fontSize: 12.sp,
                    color: context.cs.onSurface.withValues(alpha: 0.8),
                  ),
                ),
                verticalSpace(6),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      size: 13.sp,
                      color: context.cs.onSurface.withValues(alpha: 0.88),
                    ),
                    horizontalSpace(6),
                    Text(
                      entry.occurredAt.toLocal().toString().substring(0, 16),
                      style: TextStyles.note(context).copyWith(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w700,
                        color: context.cs.onSurface.withValues(alpha: 0.45),
                      ),
                    ),
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
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: _isCredit
                      ? context.appColors.success
                      : context.appColors.failure,
                ),
              ),
              if (entry.notes != null) ...[
                verticalSpace(6),
                Text(
                  entry.notes!,
                  style: TextStyles.note(context).copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: context.cs.onSurface),
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
