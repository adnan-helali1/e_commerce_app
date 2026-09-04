import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';

import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/theme/theme_mode_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:B2B/app/core/widgets/app_network_image.dart';
import 'package:B2B/app/features/profile/logic/get_profile/profile_cubit.dart';

class B2bAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String subtitle;
  final String? imageUrl;

  const B2bAppBar({
    super.key,
    required this.title,
    required this.subtitle,
    this.imageUrl,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return AppBar(
      backgroundColor: cs.background,
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
            clipBehavior: Clip.antiAlias,
            child: AppNetworkImage(
              imageUrl: imageUrl,
              placeholderIcon: Icons.store_outlined,
            ),
          ),
          horizontalSpace(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyles.font18blackBold(context)),
              if (subtitle.isNotEmpty)
                Text(subtitle, style: TextStyles.note(context)),
            ],
          ),
        ],
      ),

      /*

    onPressed: () async {
                          final created = await context.pushNamed(
                            Routes.createOrderFromOffers,
                          );
                          if (created == true) {
                            context.read<OrdersCubit>().refresh();
                          }
                        },











      */
      actions: [
        IconButton(
          icon: Icon(Icons.settings, color: cs.primary),
          onPressed: () async {
            await context.pushNamed(Routes.profileScreen);
            if (context.mounted) {
              await context.read<ProfileCubit>().refresh();
            }
          },
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
        horizontalSpace(8.w),
      ],
    );
  }
}
