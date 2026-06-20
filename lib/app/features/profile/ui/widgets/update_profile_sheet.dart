import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/profile/logic/update_profile/update_profile_cubit.dart';
import 'package:B2B/app/features/profile/logic/update_profile/update_profile_state.dart';
import 'package:B2B/app/features/profile/ui/widgets/update_profile_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateProfileSheet extends StatelessWidget {
  const UpdateProfileSheet({
    super.key,
    required this.name,
    required this.ownerName,
    this.phone,
    this.address,
  });

  final String name;
  final String ownerName;
  final String? phone;
  final String? address;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<UpdateProfileCubit>(),
      child: BlocConsumer<UpdateProfileCubit, UpdateProfileState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (_) {
              Navigator.pop(context, true);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: context.appColors.success,
                  content: const Text(
                    'Profile updated successfully',
                  ),
                ),
              );
            },
            failure: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: context.appColors.failure,
                  content: Text(error),
                ),
              );
            },
          );
        },
        builder: (context, state) {
          final loading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return UpdateProfileLog(
            name: name,
            ownerName: ownerName,
            phone: phone,
            address: address,
            loading: loading,
          );
        },
      ),
    );
  }
}
