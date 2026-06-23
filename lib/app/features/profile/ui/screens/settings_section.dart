import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/theme_mode_cubit.dart';
import 'package:B2B/app/features/profile/logic/update_profile/update_profile_cubit.dart';
import 'package:B2B/app/features/profile/logic/update_profile/update_profile_state.dart';
import 'package:B2B/app/features/profile/ui/screens/help_support_screen.dart';
import 'package:B2B/app/features/profile/ui/widgets/settings_row.dart';
import 'package:B2B/app/features/profile/ui/widgets/update_profile_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UpdateProfileCubit>(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 16.h),
        child: Column(
          children: [
            _sectionTitle("Settings & Preferences"),
            SizedBox(height: 12.h),
            _card([
              BlocBuilder<UpdateProfileCubit, UpdateProfileState>(
                builder: (context, state) {
                  return SettingsTile(
                    icon: Icons.person_outline,
                    title: "Edit Profile",
                    subtitle: "Update store information",
                    backgroundIconColor: context.cs.primary.withOpacity(0.1),
                    iconColor: context.cs.primary,
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (_) => UpdateProfileSheet(
                          name: state.maybeWhen(
                            success: (profile) => profile.data.name,
                            orElse: () => '',
                          ),
                          ownerName: state.maybeWhen(
                            success: (profile) => profile.data.ownerName,
                            orElse: () => '',
                          ),
                          phone: state.maybeWhen(
                            success: (profile) => profile.data.phone,
                            orElse: () => null,
                          ),
                          address: state.maybeWhen(
                            success: (profile) => profile.data.address,
                            orElse: () => null,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              SettingsTile(
                icon: Icons.notifications_none,
                title: "Notifications",
                subtitle: "Manage alerts and updates",
                badge: 3,
                backgroundIconColor: context.cs.secondary.withOpacity(0.3),
                iconColor: context.cs.secondary,
                onTap: () {},
              ),
              SettingsTile.switchTile(
                icon: Icons.dark_mode_outlined,
                title: "Appearance",
                subtitle: "Light mode enabled",
                backgroundIconColor: context.appColors.warning.withOpacity(0.3),
                iconColor: context.appColors.warning,
                onChanged: (v) {
                  context.read<ThemeModeCubit>().toggle();
                },
                switchValue:
                    context.watch<ThemeModeCubit>().state == ThemeMode.dark,
              ),
              SettingsTile(
                icon: Icons.tune,
                title: "Preferences",
                subtitle: "Language, currency, etc.",
                backgroundIconColor: context.cs.secondary.withOpacity(0.3),
                iconColor: context.cs.secondary,
                onTap: () {},
              ),
            ], context),
            SizedBox(height: 24.h),
            _sectionTitle("Support & Legal"),
            SizedBox(height: 12.h),
            _card([
              SettingsTile(
                  icon: Icons.help_outline,
                  title: "Help & Support",
                  backgroundIconColor:
                      context.appColors.success.withOpacity(0.2),
                  iconColor: context.appColors.success,
                  onTap: () {
                    showHelpSupportSheet(context);
                  }),
              SettingsTile(
                icon: Icons.privacy_tip_outlined,
                title: "Privacy Policy",
                backgroundIconColor: context.cs.secondary.withOpacity(0.3),
                iconColor: context.cs.secondary,
                onTap: () {
                  context.pushNamed(Routes.privacyPolicyScreen);
                },
              ),
            ], context),
          ],
        ),
      ),
    );
  }
}

Widget _sectionTitle(
  String title,
) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 17.sp,
      fontWeight: FontWeight.bold,
      color: Colors.grey.shade600,
    ),
  );
}

Widget _card(List<Widget> children, BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: context.cs.surface,
      borderRadius: BorderRadius.circular(14.r),
      border: Border.all(color: context.cs.onSurface.withOpacity(0.08)),
    ),
    child: Column(
      children: List.generate(children.length, (index) {
        return Column(
          children: [
            children[index],
            if (index != children.length - 1)
              Divider(height: 0, color: context.cs.onSurface.withOpacity(0.2)),
          ],
        );
      }),
    ),
  );
}
