import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.cs;
    final l10n = context.l10n;

    return Scaffold(
      backgroundColor: cs.background,
      appBar: AppBar(
        title: Text(l10n.privacyPolicy),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: cs.onSurface,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _title(context, l10n.privacyPolicy),
          _text(context, l10n.privacyPolicyIntro),
          _section(
            context,
            l10n.privacySectionCollectTitle,
            l10n.privacySectionCollectBody,
          ),
          _section(
            context,
            l10n.privacySectionUseTitle,
            l10n.privacySectionUseBody,
          ),
          _section(
            context,
            l10n.privacySectionSharingTitle,
            l10n.privacySectionSharingBody,
          ),
          _section(
            context,
            l10n.privacySectionSecurityTitle,
            l10n.privacySectionSecurityBody,
          ),
          _section(
            context,
            l10n.privacySectionRightsTitle,
            l10n.privacySectionRightsBody,
          ),
          _section(
            context,
            l10n.privacySectionContactTitle,
            l10n.privacySectionContactBody,
          ),
          const SizedBox(height: 30),
          Center(
            child: Text(
              l10n.privacyLastUpdated,
              style: TextStyle(color: cs.onSurface.withOpacity(.5)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _title(BuildContext context, String text) {
    final cs = context.cs;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: cs.onSurface,
        ),
      ),
    );
  }

  Widget _section(BuildContext context, String title, String body) {
    final cs = context.cs;

    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: cs.onSurface,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            body,
            style: TextStyle(
              color: cs.onSurface.withOpacity(.7),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _text(BuildContext context, String text) {
    final cs = context.cs;

    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Text(
        text,
        style: TextStyle(
          color: cs.onSurface.withOpacity(.7),
          height: 1.5,
        ),
      ),
    );
  }
}
