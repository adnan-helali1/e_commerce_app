import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/auth/data/repos/login_repo.dart';
import 'package:B2B/app/features/auth/logic/logout_cubit.dart';
import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 12),
      child: ElevatedButton.icon(
        icon: Icon(
          Icons.logout,
          color: context.cs.surface,
          size: 22,
          fontWeight: FontWeight.bold,
        ),
        label: Text('  Logout',
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: context.cs.surface)),
        style: ElevatedButton.styleFrom(
          backgroundColor: context.cs.error,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
        ),
        onPressed: () async {
          await logout(
            context,
            getIt<LoginRepo>(),
          );
        },
      ),
    );
  }
}
