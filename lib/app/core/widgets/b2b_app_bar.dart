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
    );
  }
}
