import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum SettingType { navigation, toggle, action }

class SettingItem {
  final String id; // 🔥 مهم
  final String title;
  final String? subtitle;
  final IconData? icon;
  final SettingType type;

  final bool? value; // toggle only

  final VoidCallback? onTap;

  const SettingItem({
    required this.id,
    required this.title,
    this.subtitle,
    this.icon,
    required this.type,
    this.value,
    this.onTap,
  });
}

class SettingsCubit extends Cubit<Map<String, bool>> {
  SettingsCubit() : super({});

  void init(List<SettingItem> items) {
    final map = <String, bool>{};
    for (var item in items) {
      if (item.type == SettingType.toggle) {
        map[item.id] = item.value ?? false;
      }
    }
    emit(map);
  }

  void toggle(String id) {
    final newState = Map<String, bool>.from(state);
    newState[id] = !(state[id] ?? false);
    emit(newState);
  }
}

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap;
  final int? badge;
  final Color backgroundIconColor;
  final Color iconColor;
  final bool isSwitch;
  final bool switchValue;
  final ValueChanged<bool>? onChanged;

  const SettingsTile({
    super.key,
    required this.backgroundIconColor,
    required this.iconColor,
    required this.icon,
    required this.title,
    this.subtitle,
    this.onTap,
    this.badge,
  })  : isSwitch = false,
        switchValue = false,
        onChanged = null;

  const SettingsTile.switchTile({
    super.key,
    required this.icon,
    required this.title,
    required this.backgroundIconColor,
    required this.iconColor,
    this.subtitle,
    required this.switchValue,
    required this.onChanged,
  })  : isSwitch = true,
        badge = null,
        onTap = null;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isSwitch ? null : onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
        child: Row(
          children: [
            /// ICON BOX
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: backgroundIconColor,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Icon(icon, size: 22.sp, color: iconColor),
            ),

            SizedBox(width: 12.w),

            /// TEXT
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                ],
              ),
            ),

            /// BADGE
            if (badge != null) ...[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 4, 0, 226),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Text(
                  badge.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
            ],

            /// TRAILING
            if (isSwitch)
              SizedBox(
                width: 66.w,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: CupertinoSwitch(
                    value: switchValue,
                    onChanged: onChanged,
                    activeColor: context.cs.primary,
                    trackColor: Color(0xFFE0E0E0),
                  ),
                ),
              )
            else
              Icon(
                Icons.arrow_forward_ios_rounded,
                size: 14.sp,
                color: Colors.grey.shade400,
              ),
          ],
        ),
      ),
    );
  }
}
