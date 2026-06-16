import 'package:B2B/app/features/profile/ui/widgets/4.dart';
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
        color: context.cs.surface,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: context.cs.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Store Information',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 12.h),
          ProfileInfoItem(
            icon: Icons.email_outlined,
            title: 'Email',
            value: profile.data.email ?? '',
          ),
          ProfileInfoItem(
            icon: Icons.phone_outlined,
            title: 'Phone',
            value: profile.data.phone ?? '',
          ),
          ProfileInfoItem(
            icon: Icons.location_on_outlined,
            title: 'Address',
            value: profile.data.address ?? '',
          ),
        ],
      ),
    );
  }
}
