import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_response.dart';
import 'package:B2B/app/features/home/data/models/lists/list_metrics.dart';
import 'package:B2B/app/features/home/data/models/lists/list_recent_order.dart';
import 'package:B2B/app/features/home/logic/home_cubit.dart';
import 'package:B2B/app/features/home/logic/home_state.dart';
import 'package:B2B/app/features/home/ui/widgets/home_metrics_section.dart';
import 'package:B2B/app/features/home/ui/widgets/home_quick_actions_section.dart';
import 'package:B2B/app/features/home/ui/widgets/home_ui_models.dart';
import 'package:B2B/app/features/home/ui/widgets/home_welcome_panel.dart';
import 'package:B2B/app/features/home/ui/widgets/recent_orders_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<HomeCubit>();
    _cubit.emitHomeStates();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                        const HomeWelcomePanel(),
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
