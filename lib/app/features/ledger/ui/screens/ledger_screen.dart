import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/app_shimer.dart';
import 'package:B2B/app/features/ledger/data/models/ledger_response.dart';
import 'package:B2B/app/features/ledger/logic/cubit/ledger_cubit.dart';
import 'package:B2B/app/features/ledger/logic/cubit/ledger_state.dart';
import 'package:B2B/app/features/ledger/ui/widgets/ledger_filter_bar.dart';
import 'package:B2B/app/features/ledger/ui/widgets/ledger_summery_header.dart';
import 'package:B2B/app/features/ledger/ui/widgets/ledger_transaction_list.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LedgerScreen extends StatelessWidget {
  const LedgerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LedgerCubit, LedgerState>(
      builder: (context, state) {
        return state.when(
          initial: () => const AppShimmer(),
          loading: () => const AppShimmer(),
          failure: (error) => _LedgerError(
            error: error,
            onRetry: () => context.read<LedgerCubit>().load(),
          ),
          success: (response, filter) => _LedgerContent(
            // 👈 filter from state
            response: response,
            filter: filter,
          ),
        );
      },
    );
  }
}

// ---------------------------------------------------------------------------
// Success state — fully dumb, receives everything as params
// ---------------------------------------------------------------------------

class _LedgerContent extends StatelessWidget {
  final LedgerResponse response;
  final LedgerFilter filter;

  const _LedgerContent({
    required this.response,
    required this.filter,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LedgerCubit>();
    final entries = _filteredEntries(response.data.entries.data, filter);

    return RefreshIndicator(
      onRefresh: cubit.refresh,
      color: context.cs.primary,
      child: CustomScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: [
          // ── Gradient summary header
          SliverToBoxAdapter(
            child: LedgerSummaryHeader(summary: response.data.summary),
          ),

          // ── Filter bar
          SliverToBoxAdapter(
            child: LedgerFilterBar(
              selected: filter,
              onChanged: cubit.setFilter,
              onExport: () {},
            ),
          ),

          // ── Transaction list
          LedgerTransactionList(entries: entries),
        ],
      ),
    );
  }

  List<LedgerEntry> _filteredEntries(
    List<LedgerEntry> all,
    LedgerFilter filter,
  ) {
    return switch (filter) {
      LedgerFilter.all => all,
      LedgerFilter.income =>
        all.where((e) => e.type == EntryType.credit).toList(),
      LedgerFilter.expenses =>
        all.where((e) => e.type == EntryType.debit).toList(),
    };
  }
}

// ---------------------------------------------------------------------------
// Loading shimmer
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// Error state
// ---------------------------------------------------------------------------

class _LedgerError extends StatelessWidget {
  final String error;
  final VoidCallback onRetry;

  const _LedgerError({required this.error, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cloud_off_outlined,
              size: 52.sp,
              color: context.cs.onSurface.withValues(alpha: 0.3),
            ),
            verticalSpace(16),
            Text(
              error.isEmpty ? 'Something went wrong' : error,
              textAlign: TextAlign.center,
              style: TextStyles.button(context).copyWith(
                fontSize: 14.sp,
                color: context.cs.onSurface.withValues(alpha: 0.6),
              ),
            ),
            verticalSpace(20),
            FilledButton(
              onPressed: onRetry,
              style: FilledButton.styleFrom(
                backgroundColor: context.cs.primary,
                foregroundColor: context.cs.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 12.h),
              ),
              child: Text(
                'Try again',
                style: TextStyles.button(context).copyWith(fontSize: 14.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
