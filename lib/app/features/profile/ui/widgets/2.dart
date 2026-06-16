import 'package:B2B/app/features/profile/data/models/get_profile_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/extensions.dart';
import '../../data/models/get_profile_response.dart';

class ProfileHeader extends StatelessWidget {
  final GetProfileResponse profile;

  const ProfileHeader({
    super.key,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        gradient: LinearGradient(
          colors: [
            context.cs.primary.withOpacity(0.7),
            context.cs.primary.withOpacity(0.7),
          ],
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: context.cs.onPrimary.withOpacity(0.2),
            child: Icon(
              Icons.store,
              color: context.cs.onPrimary,
              size: 28.sp,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  profile.data.name ?? '',
                  style: TextStyle(
                    color: context.cs.onPrimary,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'ID: ${profile.data.id ?? ''}',
                  style: TextStyle(
                    color: context.cs.onPrimary.withOpacity(0.8),
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(height: 8.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: context.cs.primaryContainer,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.check, size: 14.sp),
                      SizedBox(width: 4.w),
                      Text(
                        'Verified Store',
                        style: TextStyle(fontSize: 12.sp),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
