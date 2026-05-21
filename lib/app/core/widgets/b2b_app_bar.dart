import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';

import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/theme/theme_mode_cubit.dart';
import 'package:B2B/app/features/auth/data/repos/login_repo.dart';

import 'package:B2B/app/features/auth/logic/logout_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class B2bAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;

  const B2bAppBar({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return AppBar(
      backgroundColor: cs.surface,
      elevation: 1,
      automaticallyImplyLeading: false,
      titleSpacing: 16,
      title: Row(
        children: [
          Container(
            width: 40.w,
            height: 30.h,
            decoration: BoxDecoration(
              color: cs.primary,
              shape: BoxShape.circle,
            ),
            child:
                Icon(Icons.fire_truck_outlined, color: cs.onPrimary, size: 20),
          ),
          horizontalSpace(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyles.font18blackBold(context)),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.person_outline, color: cs.primary),
          onPressed: () => context.pushNamed(Routes.forgotpasswordscreen),
        ),
        IconButton(
          icon: Icon(
            Theme.of(context).brightness == Brightness.light
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined,
            color: cs.onSurface,
          ),
          onPressed: () {
            context.read<ThemeModeCubit>().toggle();
          },
        ),
        IconButton(
          icon: Icon(Icons.logout, color: cs.error),
          onPressed: () async {
            await logout(
              context,
              getIt<LoginRepo>(),
            );
          },
        ),
        horizontalSpace(8.w),
      ],
    );
  }
}
