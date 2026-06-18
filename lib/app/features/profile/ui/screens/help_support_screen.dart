import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void showHelpSupportSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (_) => const _HelpSupportSheet(),
  );
}

class _HelpSupportSheet extends StatelessWidget {
  const _HelpSupportSheet();

  Future<void> _launch(String url) async {
    final uri = Uri.parse(url);

    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.cs;
    final appColors = context.appColors;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(25)),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 50,
              height: 5,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: colors.onBackground.withOpacity(.2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Text(
              "Help & Support",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: colors.onBackground,
              ),
            ),
            const SizedBox(height: 20),
            _item(
              iconColor: colors.primary,
              backgroundIconColor: colors.primary.withOpacity(.1),
              context,
              icon: Icons.email,
              title: "Email",
              subtitle: "helaliadnan877@gmail.com",
              onTap: () => _launch("mailto:helaliadnan877@gmail.com"),
            ),
            _item(
              iconColor: appColors.success,
              backgroundIconColor: appColors.success.withOpacity(.1),
              context,
              icon: Icons.phone_forwarded_sharp,
              title: "WhatsApp",
              subtitle: "+963985198014",
              onTap: () => _launch("https://wa.me/963985198014"),
            ),
            _item(
              iconColor: appColors.failure,
              backgroundIconColor: colors.surface.withOpacity(.1),
              context,
              icon: Icons.camera_alt,
              title: "Instagram",
              subtitle: "Adnan__helali",
              onTap: () => _launch("https://instagram.com/Adnan__helali"),
            ),
            _item(
              iconColor: colors.primary,
              backgroundIconColor: colors.primary.withOpacity(.1),
              context,
              icon: Icons.facebook,
              title: "Facebook",
              subtitle: "adnan helali",
              onTap: () => _launch("https://facebook.com/adnan.helali"),
            ),
            _item(
              iconColor: colors.secondary,
              backgroundIconColor: colors.secondary.withOpacity(.1),
              context,
              icon: Icons.send,
              title: "Telegram",
              subtitle: "@adnanhelaliii",
              onTap: () => _launch("https://t.me/adnanhelalii"),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget _item(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    required Color? backgroundIconColor,
    required Color? iconColor,
  }) {
    final colors = context.cs;

    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: colors.surface,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: backgroundIconColor ?? colors.primary.withOpacity(.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: iconColor ?? colors.primary),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: colors.onSurface,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: colors.onSurface.withOpacity(.6),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 16, color: colors.onSurface),
          ],
        ),
      ),
    );
  }
}
