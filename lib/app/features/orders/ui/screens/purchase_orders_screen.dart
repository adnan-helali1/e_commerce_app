import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/orders/logic/get_orders/orders_cubit.dart';
import 'package:B2B/app/features/orders/ui/screens/get_orders_bloc_builder.dart';
import 'package:B2B/app/features/orders/ui/widgets/orders_filter_bar.dart';
import 'package:B2B/app/features/orders/ui/widgets/orders_summary_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PurchaseOrdersScreen extends StatefulWidget {
  const PurchaseOrdersScreen({super.key});

  @override
  State<PurchaseOrdersScreen> createState() => _PurchaseOrdersScreenState();
}

class _PurchaseOrdersScreenState extends State<PurchaseOrdersScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);

    _tabController.addListener(() {
      if (_tabController.indexIsChanging) return;
      final status = _tabIndexToStatus(_tabController.index);
      context.read<OrdersCubit>().filterByStatus(status);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  String _tabIndexToStatus(int index) {
    switch (index) {
      case 1:
        return 'pending';
      case 2:
        return 'approved';
      case 3:
        return 'preparing';
      case 4:
        return 'delivered';
      case 5:
        return 'submitted';
      case 6:
        return 'cancelled';
      default:
        return ''; // All Orders
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) async {
          if (didPop) return;

          context.pushNamedAndRemoveUntil(
            Routes.homescreen,
            predicate: (_) => false,
          );
        },
        child: Scaffold(
          body: RefreshIndicator(
            onRefresh: () => context.read<OrdersCubit>().refresh(),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OrdersSummaryHeader(),
                  verticalSpace(12),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          backgroundColor: context.cs.primary,
                          iconColor: context.cs.onPrimary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                        ),
                        onPressed: () async {
                          final created = await context.pushNamed(
                            Routes.createOrderFromOffers,
                          );
                          if (created == true) {
                            context.read<OrdersCubit>().refresh();
                          }
                        },
                        icon: Icon(Icons.add, size: 25.sp),
                        label: Text(
                          '  Create New Order',
                          style: TextStyles.button(context)
                              .copyWith(fontSize: 19.sp),
                        ),
                      ),
                    ),
                  ),
                  verticalSpace(12),
                  OrdersFilterBar(controller: _tabController),
                  verticalSpace(12),
                  verticalSpace(12),
                  GetOrdersBlocBuilder(
                    tabController: _tabController,
                  ),
                  verticalSpace(24),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
