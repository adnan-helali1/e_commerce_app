import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/orders/data/models/get_orders/models/orders_response.dart';
import 'package:B2B/app/features/orders/logic/get_orders/orders_cubit.dart';
import 'package:B2B/app/features/orders/logic/get_orders/orders_state.dart';
import 'package:B2B/app/features/orders/ui/widgets/orders_result_summary.dart';
import 'package:B2B/app/features/orders/ui/widgets/purchase_order_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetOrdersBlocBuilder extends StatefulWidget {
  final TabController tabController;
  final Function(OrdersResponse response)? onDataLoaded;

  const GetOrdersBlocBuilder({
    super.key,
    required this.tabController,
    this.onDataLoaded,
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
          orElse: () => const SizedBox.shrink(),
          success: (response) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              widget.onDataLoaded?.call(response);
            });
            final orders = response.data.data; // List<OrderModel>
            final pagnedOrders = response; // PaginatedResponse<OrderModel>
            if (orders.isEmpty) {
              return Center(
                child: Padding(
                  padding: EdgeInsets.all(32.r),
                  child: Text(
                    'No orders found',
                    style: TextStyles.font18blackBold(context),
                  ),
                ),
              );
            }

            return Column(children: [
              OrdersResultSummary(order: pagnedOrders),
              ...List.generate(
                growable: true,
                orders.length,
                (index) => PurchaseOrderCard(
                  order: orders[index],
                  isExpanded: _expandedStates[index] ?? false,
                  onTap: () {
                    setState(() {
                      _expandedStates[index] =
                          !(_expandedStates[index] ?? false);
                    });
                  },
                ),
              ),
            ]);
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
