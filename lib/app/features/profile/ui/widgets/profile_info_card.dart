import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/features/profile/ui/widgets/profile_info_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions.dart';
import '../../data/models/get_profile_response.dart';

class ProfileInfoCard extends StatelessWidget {
  final GetProfileResponse profile;

  const ProfileInfoCard({
    super.key,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: context.cs.surfaceVariant,
        borderRadius: BorderRadius.circular(16.r),
        border:
            Border.all(color: context.cs.surfaceContainerLow.withOpacity(0.9)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.store_outlined,
                color: context.cs.primary,
                size: 28.sp,
              ),
              horizontalSpace(8),
              Text(
                'Store Information',
                style: TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          ProfileInfoItem(
            icon: Icons.email_outlined,
            title: 'Email',
            value: profile.data.email,
          ),
          ProfileInfoItem(
            icon: Icons.phone_outlined,
            title: 'Phone',
            value: profile.data.phone,
          ),
          ProfileInfoItem(
            icon: Icons.location_on_outlined,
            title: 'Address',
            value: profile.data.address,
          ),
        ],
      ),
    );
  }
}
