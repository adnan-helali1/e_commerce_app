import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/profile/ui/widgets/profile_header.dart';
import 'package:B2B/app/features/profile/ui/widgets/profile_info_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../logic/get_profile/profile_cubit.dart';
import '../../logic/get_profile/profile_state.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cs.background,
      body: SafeArea(
        child: BlocConsumer<ProfileCubit, ProfileState>(
          listener: (context, state) {
            /// لو بدك SnackBar أو side effects
          },
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
        ),
      ),
    );
  }
}
