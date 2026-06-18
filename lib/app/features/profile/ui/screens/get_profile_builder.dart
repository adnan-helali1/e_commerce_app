import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/profile/logic/get_profile/profile_cubit.dart';
import 'package:B2B/app/features/profile/logic/get_profile/profile_state.dart';
import 'package:B2B/app/features/profile/ui/widgets/profile_header.dart';
import 'package:B2B/app/features/profile/ui/widgets/profile_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetProfileBuilder extends StatelessWidget {
  const GetProfileBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        final cubit = context.read<ProfileCubit>();

        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const SizedBox.shrink(),
          success: (profile) {
            return RefreshIndicator(
              onRefresh: cubit.refresh,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    ProfileHeader(profile: profile),
                    SizedBox(height: 16.h),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ProfileInfoCard(profile: profile),
                    ),
                  ],
                ),
              ),
            );
          },
          failure: (error) {
            return Center(
              child: Text(
                error,
                style: TextStyle(
                  color: context.cs.error,
                  fontSize: 14.sp,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
