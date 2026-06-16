import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/profile/ui/screens/get_profile_builder.dart';
import 'package:B2B/app/features/profile/ui/screens/settings_section.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cs.background,
      body: SafeArea(
        child: Column(
          children: [
            GetProfileBuilder(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: Text(
                'Settings & Preferences',
                style: TextStyles.label(context)
                    .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
            ),
            SettingsSection()
          ],
        ),
      ),
    );
  }
}
