import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/theme_mode_cubit.dart';
import 'package:B2B/app/features/profile/logic/get_profile/profile_cubit.dart';
import 'package:B2B/app/features/profile/logic/get_profile/profile_state.dart';
import 'package:B2B/app/features/profile/ui/screens/help_support_screen.dart';
import 'package:B2B/app/features/profile/ui/widgets/language_picker_sheet.dart';
import 'package:B2B/app/features/profile/ui/widgets/settings_row.dart';
import 'package:B2B/app/features/profile/ui/widgets/update_profile_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isDark = context.watch<ThemeModeCubit>().state == ThemeMode.dark;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 16.h),
      child: Column(
        children: [
          _sectionTitle(l10n.settingsAndPreferences),
          SizedBox(height: 12.h),
          _card([
            SettingsTile(
              icon: Icons.person_outline,
              title: l10n.editProfile,
              subtitle: l10n.updateStoreInformation,
              backgroundIconColor: context.cs.primary.withOpacity(0.1),
              iconColor: context.cs.primary,
              onTap: () async {
                final profile = context.read<ProfileCubit>().state.when(
                      initial: () => null,
                      loading: () => null,
                      success: (value) => value.data,
                      failure: (_) => null,
                    );
                if (profile == null) return;
                final updated = await showModalBottomSheet<bool>(
                  context: context,
                  isScrollControlled: true,
                  builder: (_) => UpdateProfileSheet(
                    name: profile.name,
                    ownerName: profile.ownerName,
                    phone: profile.phone,
                    address: profile.address,
                    imageUrl: profile.imageUrl,
                  ),
                );
                if (updated == true && context.mounted) {
                  await context.read<ProfileCubit>().refresh();
                }
              },
            ),
            SettingsTile.switchTile(
              icon: Icons.dark_mode_outlined,
              title: l10n.appearance,
              subtitle: isDark ? l10n.darkModeEnabled : l10n.lightModeEnabled,
              backgroundIconColor: context.appColors.warning.withOpacity(0.3),
              iconColor: context.appColors.warning,
              onChanged: (v) {
                context.read<ThemeModeCubit>().toggle();
              },
              switchValue: isDark,
            ),
            SettingsTile(
              icon: Icons.language,
              title: l10n.language,
              subtitle: l10n.preferencesSubtitle,
              backgroundIconColor: context.cs.secondary.withOpacity(0.3),
              iconColor: context.cs.secondary,
              onTap: () => showLanguagePickerSheet(context),
            ),
          ], context),
          SizedBox(height: 24.h),
          _sectionTitle(l10n.supportAndLegal),
          SizedBox(height: 12.h),
          _card([
            SettingsTile(
                icon: Icons.help_outline,
                title: l10n.helpAndSupport,
                backgroundIconColor: context.appColors.success.withOpacity(0.2),
                iconColor: context.appColors.success,
                onTap: () {
                  showHelpSupportSheet(context);
                }),
            SettingsTile(
              icon: Icons.privacy_tip_outlined,
              title: l10n.privacyPolicy,
              backgroundIconColor: context.cs.secondary.withOpacity(0.3),
              iconColor: context.cs.secondary,
              onTap: () {
                context.pushNamed(Routes.privacyPolicyScreen);
              },
            ),
          ], context),
        ],
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
