import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/profile/data/models/update_profile_request.dart';
import 'package:B2B/app/features/profile/logic/update_profile/update_profile_cubit.dart';
import 'package:B2B/app/features/profile/logic/update_profile/update_profile_state.dart';
import 'package:B2B/app/core/widgets/form_filed_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:B2B/app/core/images/selected_image.dart';
import 'package:B2B/app/core/widgets/image_picker_field.dart';

class UpdateProfileSheet extends StatefulWidget {
  const UpdateProfileSheet({
    super.key,
    required this.name,
    required this.ownerName,
    this.phone,
    this.address,
    this.imageUrl,
  });

  final String name;
  final String ownerName;
  final String? phone;
  final String? address;
  final String? imageUrl;

  @override
  State<UpdateProfileSheet> createState() => _UpdateProfileSheetState();
}

class _UpdateProfileSheetState extends State<UpdateProfileSheet> {
  late final TextEditingController _nameController;
  late final TextEditingController _ownerController;
  late final TextEditingController _phoneController;
  late final TextEditingController _addressController;
  SelectedImage? _image;

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
            image: _image,
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
                  content: Text(context.l10n.profileUpdatedSuccess),
                ),
              );
            },
            failure: (error, _) {
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
            loading: (_) => true,
            orElse: () => false,
          );
          final progress = state.maybeWhen(
            loading: (value) => value,
            orElse: () => null,
          );

          return GenericUpdateForm(
            title: context.l10n.updateProfile,
            loading: loading,
            progress: progress,
            header: ImagePickerField(
              image: _image,
              currentImageUrl: widget.imageUrl,
              errorText: state.maybeWhen(
                failure: (_, imageError) => imageError,
                orElse: () => null,
              ),
              onChanged: (image) => setState(() => _image = image),
            ),
            fields: [
              FormFieldConfig(
                label: context.l10n.storeName,
                controller: _nameController,
              ),
              FormFieldConfig(
                label: context.l10n.ownerName,
                controller: _ownerController,
              ),
              FormFieldConfig(
                label: context.l10n.phone,
                controller: _phoneController,
                keyboardType: TextInputType.phone,
              ),
              FormFieldConfig(
                label: context.l10n.address,
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
