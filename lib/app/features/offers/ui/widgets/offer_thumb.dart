import 'package:flutter/material.dart';
import 'package:B2B/app/core/helpers/extensions.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:B2B/app/core/widgets/app_network_image.dart';

class OfferThumb extends StatelessWidget {
  const OfferThumb({super.key, this.imageUrl});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.r,
      height: 80.r,
      margin: EdgeInsets.only(top: 2.h),
      decoration: BoxDecoration(
        color: context.cs.surfaceContainerHighest.withValues(alpha: 0.72),
        borderRadius: BorderRadius.circular(6.r),
      ),
      clipBehavior: Clip.antiAlias,
      child: AppNetworkImage(
        imageUrl: imageUrl,
        borderRadius: BorderRadius.circular(6.r),
      ),
    );
  }
}
