import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/widgets/app_summary_header.dart';
import 'package:B2B/app/features/profile/data/models/get_profile_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHeader extends StatelessWidget {
  final GetProfileResponse profile;

  const ProfileHeader({
    super.key,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    return SummaryHeader(
      title: '',
      stats: [],
      height: 190.h,
      leading: Row(
        children: [
          CircleAvatar(
            radius: 40.r,
            backgroundColor: context.cs.onPrimary.withOpacity(0.2),
            child: Icon(Icons.store_outlined,
                color: context.cs.onPrimary, size: 60.sp),
          ),
          horizontalSpace(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  profile.data.name,
                  style: TextStyle(
                    color: context.cs.onPrimary,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'ID: SM--${profile.data.id}',
                  style: TextStyle(
                    color: context.cs.onPrimary.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
