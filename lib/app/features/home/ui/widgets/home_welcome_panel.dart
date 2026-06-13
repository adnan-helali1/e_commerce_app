import 'package:B2B/app/core/widgets/app_bottom_bar_cubit.dart';
import 'package:B2B/app/core/widgets/app_summary_header.dart';
import 'package:flutter/material.dart';

class HomeWelcomePanel extends StatelessWidget {
  final VoidCallback? onBrowseOffers;
  final VoidCallback? onQuickSale;
  final BottomNavCubit navCubit; // ✅ أضف هنا

  const HomeWelcomePanel({
    super.key,
    this.onBrowseOffers,
    this.onQuickSale,
    required this.navCubit, // ✅ required
  });

  @override
  Widget build(BuildContext context) {
    return SummaryHeader(
      title: 'Welcome Back!',
      subtitle: "Here's your business overview for today",
      height: 170,
      isWelcome: true,
      stats: [],
      onActionButton1: onBrowseOffers ??
          () {
            navCubit.changeIndex(1); // ✅ استخدم navCubit
          },
      onActionButton2: onQuickSale ??
          () {
            navCubit.changeIndex(2); // ✅ استخدم navCubit
          },
      actionButton1Label: 'Browse Offers',
      actionButton2Label: 'Quick Sale',
      actionButton1Icon: Icons.local_offer_outlined,
      actionButton2Icon: Icons.trending_up_rounded,
    );
  }
}
