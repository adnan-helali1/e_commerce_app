import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/widgets/app_bottom_bar_cubit.dart';
import 'package:B2B/app/core/widgets/app_summary_header.dart';
import 'package:flutter/material.dart';

class HomeWelcomePanel extends StatelessWidget {
  final VoidCallback? onBrowseOffers;
  final VoidCallback? onQuickSale;
  final BottomNavCubit navCubit;

  const HomeWelcomePanel({
    super.key,
    this.onBrowseOffers,
    this.onQuickSale,
    required this.navCubit,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SummaryHeader(
      title: l10n.welcomeBackExclaim,
      subtitle: l10n.homeOverviewSubtitle,
      height: 170,
      isWelcome: true,
      stats: [],
      onActionButton1: onBrowseOffers ??
          () {
            navCubit.changeIndex(1);
          },
      onActionButton2: onQuickSale ??
          () {
            navCubit.changeIndex(2);
          },
      actionButton1Label: l10n.browseOffers,
      actionButton2Label: l10n.quickSale,
      actionButton1Icon: Icons.local_offer_outlined,
      actionButton2Icon: Icons.trending_up_rounded,
    );
  }
}
