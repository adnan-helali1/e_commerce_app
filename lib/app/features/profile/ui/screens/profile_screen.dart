import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/profile/ui/screens/get_profile_builder.dart';
import 'package:B2B/app/features/profile/ui/screens/settings_section.dart';
import 'package:B2B/app/features/profile/ui/widgets/logout_button.dart';
import 'package:B2B/app/features/profile/ui/widgets/settings_row.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final items = [
    SettingItem(
      id: 'dark_mode',
      title: 'Dark Mode',
      icon: Icons.dark_mode_outlined,
      subtitle: 'Update Store  information',
      type: SettingType.toggle,
      value: false,
    ),
    SettingItem(
      id: 'edit_profile',
      title: 'Edit Profile',
      subtitle: 'Update Store  information',
      icon: Icons.person_outline,
      type: SettingType.navigation,
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.cs.background,
      body: SafeArea(
        child: ListView(
          children: [
            const GetProfileBuilder(),
            BlocProvider(
              create: (_) => SettingsCubit()..init(items),
              child: SettingsScreen(),
            ),
            const LogoutButton(),
          ],
        ),
      ),
    );
  }
}
