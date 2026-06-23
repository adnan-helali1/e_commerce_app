import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/app_shimer.dart';
import 'package:B2B/app/features/orders/logic/get_orders/orders_cubit.dart';
import 'package:B2B/app/features/orders/logic/get_orders/orders_state.dart';
import 'package:B2B/app/features/orders/ui/widgets/orders_result_summary.dart';
import 'package:B2B/app/features/orders/ui/widgets/purchase_order_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetOrdersBlocBuilder extends StatefulWidget {
  final TabController tabController;

  const GetOrdersBlocBuilder({
    super.key,
    required this.tabController,
  });

  @override
  State<GetOrdersBlocBuilder> createState() => _GetOrdersBlocBuilderState();
}

class _GetOrdersBlocBuilderState extends State<GetOrdersBlocBuilder>
    with SingleTickerProviderStateMixin {
  final Map<int, bool> _expandedStates = {};

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCubit, OrdersState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const AppShimmer(),
          success: (response) {
            final orders = response.data.data; // List<OrderModel>
            final pagnedOrders = response; // PaginatedResponse<OrderModel>
            if (orders.isEmpty) {
              return Center(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 32.r, vertical: 16.r),
                  child: Text(
                    'No orders found',
                    style: TextStyles.font18blackBold(context),
                  ),
                ),
              );
            }

            return Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: orders.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return OrdersResultSummary(order: pagnedOrders);
                  }

                  final order = orders[index - 1];

                  return PurchaseOrderCard(
                    order: order,
                    isExpanded: _expandedStates[index] ?? false,
                    onTap: () {
                      setState(() {
                        _expandedStates[index] =
                            !(_expandedStates[index] ?? false);
                      });
                    },
                  );
                },
              ),
            );
          },
          failure: (error) => Center(
            child: Padding(
              padding: EdgeInsets.all(32.r),
              child: Column(
                children: [
                  Text(
                    error,
                    style: TextStyles.font18blackBold(context),
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(12),
                  TextButton(
                    onPressed: () => context.read<OrdersCubit>().load(),
                    child: const Text('Try Again'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
