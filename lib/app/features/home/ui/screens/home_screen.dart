import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/features/home/data/lists/list_metrics.dart';
import 'package:B2B/app/features/home/data/lists/list_recent_order.dart';
import 'package:B2B/app/features/home/logic/home_cubit.dart';
import 'package:B2B/app/features/home/logic/home_state.dart';
import 'package:B2B/app/features/home/ui/widgets/home_metrics_section.dart';
import 'package:B2B/app/features/home/ui/widgets/home_quick_actions_section.dart';
import 'package:B2B/app/features/home/ui/widgets/home_welcome_panel.dart';
import 'package:B2B/app/features/home/ui/widgets/recent_orders_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          onRefresh: () async => context.read<HomeCubit>().refresh(),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return state.when(
                  initial: () {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        HomeWelcomePanel(),
                        SizedBox(height: 20),
                        Center(child: CircularProgressIndicator()),
                      ],
                    );
                  },
                  loading: () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        tooltip: 'مسح الكاش',
                        icon: const Icon(Icons.delete_outline),
                        onPressed: () async {
                          await context.read<HomeCubit>().clearCache();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('تم مسح الكاش وجلب البيانات')),
                          );
                        },
                      ),
                      const HomeWelcomePanel(),
                      verticalSpace(16),
                      const HomeMetricsSection(metrics: []),
                      verticalSpace(16),
                      const RecentOrdersSection(orders: []),
                      verticalSpace(4),
                      const HomeQuickActionsSection(),
                      verticalSpace(24),
                    ],
                  ),
                  success: (response) {
                    final metrics = mapMetrics(response);
                    final recent = mapRecentOrders(response);
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              tooltip: 'مسح الكاش',
                              icon: const Icon(Icons.delete_outline),
                              onPressed: () async {
                                await context.read<HomeCubit>().clearCache();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Text('تم مسح الكاش وجلب البيانات')),
                                );
                              },
                            ),
                            const Expanded(child: HomeWelcomePanel()),
                          ],
                        ),
                        verticalSpace(16),
                        HomeMetricsSection(metrics: metrics),
                        verticalSpace(16),
                        RecentOrdersSection(orders: recent),
                        verticalSpace(4),
                        const HomeQuickActionsSection(),
                        verticalSpace(24),
                      ],
                    );
                  },
                  failure: (error) => Column(
                    children: [
                      const HomeWelcomePanel(),
                      const SizedBox(height: 20),
                      Center(child: Text('Error: $error')),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
