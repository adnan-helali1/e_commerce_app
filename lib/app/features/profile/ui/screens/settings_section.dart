import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/profile/ui/widgets/settings_row.dart';
import 'package:flutter/material.dart';

class SettingsSection extends StatelessWidget {
  const SettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingsItem(
          title: 'Edit Profile',
          subtitle: 'Update store information',
          iconColor: context.cs.primary,
          backgroundColor: context.cs.primary.withOpacity(0.1),
          leadingIcon: Icons.person_outline,
          onTap: () {
            // navigate
          },
        ),
        SettingsItem(
          title: 'Appearance',
          subtitle: 'light and dark mode',
          iconColor: context.cs.primary,
          backgroundColor: context.cs.primary.withOpacity(0.1),
          leadingIcon: Icons.motion_photos_off,
          onTap: () {
            // navigate
          },
        ),
        SettingsItem(
          title: 'Edit Profile',
          subtitle: 'Update store information',
          iconColor: context.cs.primary,
          backgroundColor: context.cs.primary.withOpacity(0.1),
          leadingIcon: Icons.person_outline,
          onTap: () {
            // navigate
          },
        ),
        SettingsItem(
          title: 'Edit Profile',
          subtitle: 'Update store information',
          iconColor: context.cs.primary,
          backgroundColor: context.cs.primary.withOpacity(0.1),
          leadingIcon: Icons.person_outline,
          onTap: () {
            // navigate
          },
        ),
        SettingsItem(
          title: 'Edit Profile',
          subtitle: 'Update store information',
          iconColor: context.cs.primary,
          backgroundColor: context.cs.primary.withOpacity(0.1),
          leadingIcon: Icons.person_outline,
          onTap: () {
            // navigate
          },
        ),
      ],
    );
  }
}
