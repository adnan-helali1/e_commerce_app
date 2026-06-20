import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/features/profile/data/models/update_profile_request.dart';
import 'package:B2B/app/features/profile/logic/get_profile/profile_cubit.dart';
import 'package:B2B/app/features/profile/logic/update_profile/update_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateProfileLog extends StatefulWidget {
  const UpdateProfileLog({
    super.key,
    required this.name,
    required this.ownerName,
    this.phone,
    this.address,
    required this.loading,
  });

  final String name;
  final String ownerName;
  final String? phone;
  final String? address;
  final bool loading;

  @override
  State<UpdateProfileLog> createState() => _UpdateProfileLogState();
}

class _UpdateProfileLogState extends State<UpdateProfileLog> {
  late final TextEditingController _nameController;
  late final TextEditingController _ownerController;
  late final TextEditingController _phoneController;
  late final TextEditingController _addressController;

  @override
  void initState() {
    super.initState();

    _nameController = TextEditingController(
      text: widget.name,
    );

    _ownerController = TextEditingController(
      text: widget.ownerName,
    );

    _phoneController = TextEditingController(
      text: widget.phone ?? '',
    );

    _addressController = TextEditingController(
      text: widget.address ?? '',
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _ownerController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  void _submit() {
    context.read<ProfileCubit>().refresh();
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
    return Container(
      color: context.cs.background,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            verticalSpace(16),
            Text('Update Your Profile',
                style: TextStyle(
                    color: context.cs.primary,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold)),
            verticalSpace(22),
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                border: ShapedInputBorder(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                )),
                labelText: 'Store Name',
              ),
            ),
            verticalSpace(16),
            TextFormField(
              controller: _ownerController,
              decoration: const InputDecoration(
                border: ShapedInputBorder(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                )),
                labelText: 'Owner Name',
              ),
            ),
            verticalSpace(16),
            TextFormField(
              keyboardType: TextInputType.phone,
              controller: _phoneController,
              decoration: const InputDecoration(
                border: ShapedInputBorder(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                )),
                labelText: 'Phone',
              ),
            ),
            verticalSpace(16),
            TextFormField(
              controller: _addressController,
              decoration: const InputDecoration(
                border: ShapedInputBorder(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                )),
                labelText: 'Address',
              ),
            ),
            verticalSpace(24),
            SizedBox(
              width: 180.w,
              height: 52.h,
              child: FilledButton(
                onPressed: widget.loading ? null : _submit,
                child: widget.loading
                    ? const CircularProgressIndicator()
                    : const Text(
                        'Update Profile',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
