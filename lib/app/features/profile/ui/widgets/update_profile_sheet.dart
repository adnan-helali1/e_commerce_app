import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/profile/data/models/update_profile_request.dart';
import 'package:B2B/app/features/profile/logic/update_profile/update_profile_cubit.dart';
import 'package:B2B/app/features/profile/logic/update_profile/update_profile_state.dart';
import 'package:B2B/app/core/widgets/form_filed_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateProfileSheet extends StatefulWidget {
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
  State<UpdateProfileSheet> createState() => _UpdateProfileSheetState();
}

class _UpdateProfileSheetState extends State<UpdateProfileSheet> {
  late final TextEditingController _nameController;
  late final TextEditingController _ownerController;
  late final TextEditingController _phoneController;
  late final TextEditingController _addressController;

  @override
  void initState() {
    super.initState();

    _nameController = TextEditingController(text: widget.name);
    _ownerController = TextEditingController(text: widget.ownerName);
    _phoneController = TextEditingController(text: widget.phone ?? '');
    _addressController = TextEditingController(text: widget.address ?? '');
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ownerController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  void _submit(BuildContext context) {
    context.read<UpdateProfileCubit>().updateProfile(
          items: UpdateProfileRequest(
            name: _nameController.text.trim(),
            ownerName: _ownerController.text.trim(),
            phone: _phoneController.text.trim(),
            address: _addressController.text.trim(),
          ),
        );
  }

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
                  content: const Text('Profile updated successfully'),
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

          return GenericUpdateForm(
            title: "Update Profile",
            loading: loading,
            fields: [
              FormFieldConfig(
                label: "Store Name",
                controller: _nameController,
              ),
              FormFieldConfig(
                label: "Owner Name",
                controller: _ownerController,
              ),
              FormFieldConfig(
                label: "Phone",
                controller: _phoneController,
                keyboardType: TextInputType.phone,
              ),
              FormFieldConfig(
                label: "Address",
                controller: _addressController,
              ),
            ],
            onSubmit: () => _submit(context),
          );
        },
      ),
    );
  }
}
