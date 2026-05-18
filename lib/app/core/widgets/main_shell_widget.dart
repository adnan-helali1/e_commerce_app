import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';

/// Main shell widget that wraps the post-auth screens with a bottom navigation bar.
class MainShellWidget extends StatefulWidget {
  final Widget child;

  const MainShellWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  State<MainShellWidget> createState() => _MainShellWidgetState();
}

class _MainShellWidgetState extends State<MainShellWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // TODO: Navigate to different screens based on index
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  /// Builds the pill-shaped bottom navigation bar
  Widget _buildBottomNavigationBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: context.cs.primary.withValues(alpha: 0.18),
          borderRadius: BorderRadius.circular(50.r),
          boxShadow: [
            BoxShadow(
              color: context.cs.shadow.withValues(alpha: 0.10),
              blurRadius: 8.r,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildNavItem(
              icon: Icons.home,
              label: 'Home',
              index: 0,
            ),
            _buildNavItem(
              icon: Icons.phone,
              label: 'Calls',
              index: 1,
            ),
            _buildNavItem(
              icon: Icons.settings,
              label: 'Settings',
              index: 2,
            ),
            _buildNavItem(
              icon: Icons.star,
              label: 'Favorites',
              index: 3,
            ),
            _buildNavItem(
              icon: Icons.more_horiz,
              label: 'More',
              index: 4,
            ),
          ],
        ),
      ),
    );
  }

  /// Builds individual navigation item
  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    final isActive = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: isActive ? 14.w : 8.w,
          vertical: 8.h,
        ),
        decoration: isActive
            ? BoxDecoration(
                color: context.cs.surface,
                borderRadius: BorderRadius.circular(999.r),
              )
            : null,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: isActive
                  ? context.cs.primary
                  : context.cs.primary.withValues(alpha: 0.72),
              size: 24.sp,
            ),
            if (isActive) ...[
              horizontalSpace(8),
              Text(
                label,
                style: TextStyles.label(context).copyWith(
                  color: context.cs.primary,
                  fontSize: 10.sp,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
