import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class B2BAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const B2BAppBar({
    required this.title,
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(56.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: context.cs.surface,
      surfaceTintColor: context.cs.surface,
      titleSpacing: 16.w,
      title: Text(title, style: TextStyles.label(context)),
      actions: [
        _HeaderIconButton(
          icon: Icons.phone_android_rounded,
          isActive: true,
          showNotification: true,
          onTap: () {},
        ),
        _HeaderIconButton(
          icon: Icons.desktop_windows_outlined,
          onTap: () {},
        ),
        SizedBox(width: 8.w),
      ],
    );
  }
}

class _HeaderIconButton extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final bool showNotification;
  final VoidCallback onTap;

  const _HeaderIconButton({
    required this.icon,
    required this.onTap,
    this.isActive = false,
    this.showNotification = false,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor = isActive
        ? context.cs.primary
        : context.cs.surfaceContainerHighest.withValues(alpha: 0.55);
    final foregroundColor =
        isActive ? context.cs.onPrimary : context.cs.onSurfaceVariant;

    return Padding(
      padding: EdgeInsetsDirectional.only(start: 6.w),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            width: 40.w,
            height: 36.h,
            child: IconButton(
              onPressed: onTap,
              style: IconButton.styleFrom(
                backgroundColor: backgroundColor,
                foregroundColor: foregroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                  side: BorderSide(color: context.appColors.borderColor),
                ),
              ),
              icon: Icon(icon, size: 18.sp),
              padding: EdgeInsets.zero,
            ),
          ),
          if (showNotification)
            PositionedDirectional(
              top: -2.h,
              end: -2.w,
              child: Container(
                width: 6.r,
                height: 6.r,
                decoration: BoxDecoration(
                  color: context.cs.error,
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
