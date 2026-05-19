import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/b2b_info_card.dart';
import 'package:B2B/app/features/home/ui/widgets/home_ui_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeMetricsSection extends StatelessWidget {
  final List<HomeMetric> metrics;

  const HomeMetricsSection({
    required this.metrics,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.trending_up_rounded,
                  color: context.cs.primary, size: 18.sp),
              horizontalSpace(6),
              Text('Key Metrics', style: TextStyles.label(context)),
            ],
          ),
          verticalSpace(12),
          GridView.builder(
            itemCount: metrics.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12.w,
              mainAxisSpacing: 1.h,
              childAspectRatio: 1.8,
            ),
            itemBuilder: (context, index) =>
                _MetricCard(metric: metrics[index]),
          ),
        ],
      ),
    );
  }
}

class _MetricCard extends StatelessWidget {
  final HomeMetric metric;

  const _MetricCard({required this.metric});

  @override
  Widget build(BuildContext context) {
    final color = _toneColor(context, metric.tone);
    final isTinted = metric.tone == HomeMetricTone.warning ||
        metric.tone == HomeMetricTone.info;

    return B2BInfoCard(
      color: isTinted ? color.withValues(alpha: 0.12) : context.cs.surface,
      border: Border.all(
        color: isTinted
            ? color.withValues(alpha: 0.25)
            : context.appColors.borderColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  metric.title,
                  style: TextStyles.note(context).copyWith(fontSize: 11.sp),
                ),
              ),
              Container(
                width: 36.r,
                height: 36.r,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child:
                    Icon(metric.icon, color: context.cs.onPrimary, size: 18.sp),
              ),
            ],
          ),
          Text(
            metric.value,
            style: TextStyles.screenTitle(context).copyWith(fontSize: 24.sp),
          ),
          if (metric.note != null)
            Text(
              metric.note!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.note(context).copyWith(
                color: metric.note!.contains('increase')
                    ? context.appColors.success
                    : context.cs.onSurfaceVariant,
                fontSize: 10.sp,
                height: 1.2,
              ),
            ),
        ],
      ),
    );
  }

  Color _toneColor(BuildContext context, HomeMetricTone tone) {
    switch (tone) {
      case HomeMetricTone.success:
        return context.appColors.success;
      case HomeMetricTone.primary:
        return context.cs.primary;
      case HomeMetricTone.info:
        return context.appColors.info;
      case HomeMetricTone.warning:
        return context.appColors.warning;
    }
  }
}
