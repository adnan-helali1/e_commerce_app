import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppShimmer extends StatelessWidget {
  const AppShimmer();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1220.h,
      width: double.infinity,
      child: CustomScrollView(
        physics: const NeverScrollableScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: _ShimmerBox(height: 190.h)),
          SliverToBoxAdapter(child: verticalSpace(12)),
          SliverList.separated(
            itemCount: 5,
            separatorBuilder: (_, __) => verticalSpace(8),
            itemBuilder: (_, __) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: _ShimmerBox(height: 76.h),
            ),
          ),
        ],
      ),
    );
  }
}

class _ShimmerBox extends StatelessWidget {
  final double height;

  const _ShimmerBox({required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: context.cs.surfaceVariant.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(10.r),
      ),
    );
  }
}
