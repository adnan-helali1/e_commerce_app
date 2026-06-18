import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = context.cs;

    return Scaffold(
      backgroundColor: cs.background,
      appBar: AppBar(
        title: const Text("Privacy Policy"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: cs.onSurface,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _title(context, "Privacy Policy"),
          _text(
            context,
            "This Privacy Policy explains how our B2B eCommerce application collects, uses, and protects your information.",
          ),
          _section(
            context,
            "1. Information We Collect",
            "We may collect business information such as company name, contact details, email address, and transaction data. We also collect technical data like device type and usage analytics.",
          ),
          _section(
            context,
            "2. How We Use Information",
            "We use your data to provide services, process transactions, improve the platform, and communicate updates or support.",
          ),
          _section(
            context,
            "3. Data Sharing",
            "We do not sell your data. We may share information with trusted partners only to operate the platform or comply with legal obligations.",
          ),
          _section(
            context,
            "4. Security",
            "We implement strong security measures to protect your data, including encryption and secure servers.",
          ),
          _section(
            context,
            "5. Your Rights",
            "You can request access, correction, or deletion of your data at any time by contacting us.",
          ),
          _section(
            context,
            "6. Contact Us",
            "If you have any questions, contact us at:\n\nEmail: helaliadnan877@gmail.com",
          ),
          const SizedBox(height: 30),
          Center(
            child: Text(
              "Last updated: 2025",
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
