import 'package:B2B/app/core/helpers/extensions.dart';
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
    return Container(
      width: double.infinity,
      height: 150.h,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            context.cs.primary,
            context.cs.primaryContainer,
            context.cs.primaryContainer,
            context.cs.primaryFixed,
            context.cs.primary,
            context.cs.onSecondary,
          ],
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40.r,
            backgroundColor: context.cs.onPrimary.withOpacity(0.2),
            child: Icon(
              Icons.store_outlined,
              color: context.cs.onPrimary,
              size: 60.sp,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  profile.data.name,
                  maxLines: 1,
                  style: TextStyle(
                    color: context.cs.onPrimary,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  'ID: SM--${profile.data.id}',
                  maxLines: 1,
                  style: TextStyle(
                    color: context.cs.onPrimary.withOpacity(0.8),
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w800,
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
                  child: Container(
                    color: context.cs.secondaryContainer,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 2.h,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.check, size: 14.sp),
                        SizedBox(width: 4.w),
                        Text(
                          'Verified Store',
                          style: TextStyle(
                              fontSize: 12.sp, fontWeight: FontWeight.w800),
                        ),
                      ],
                    ),
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
