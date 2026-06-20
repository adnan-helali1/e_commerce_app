import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/app_summary_header.dart';
import 'package:B2B/app/features/ledger/data/models/ledger_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LedgerSummaryHeader extends StatelessWidget {
  final LedgerSummary summary;

  const LedgerSummaryHeader({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    return SummaryHeader(
      height: 240.h,
      title: '',
      stats: [
        SummaryStat(
          icon: Icons.trending_up_rounded,
          value: '\$${summary.totalCredits.toStringAsFixed(2)}',
          label: 'Total Income',
        ),
        SummaryStat(
          icon: Icons.trending_down_rounded,
          value: '\$${summary.totalDebits.toStringAsFixed(2)}',
          label: 'Total Expenses',
        ),
      ],
      customTop: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Current Balance',
            style: TextStyles.note(context).copyWith(
              color: context.cs.onPrimary.withValues(alpha: 0.85),
            ),
          ),
          verticalSpace(4),
          Text(
            '\$${summary.balance.toStringAsFixed(2)}',
            style: TextStyles.screenTitle(context).copyWith(
              color: context.cs.onPrimary,
              fontSize: 34.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
