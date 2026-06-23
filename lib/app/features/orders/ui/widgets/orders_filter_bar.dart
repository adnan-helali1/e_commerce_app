import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/orders/logic/get_orders/orders_cubit.dart';
import 'package:B2B/app/features/orders/logic/get_orders/orders_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersFilterBar extends StatefulWidget {
  final TabController controller;

  const OrdersFilterBar({
    required this.controller,
    super.key,
  });

  @override
  State<OrdersFilterBar> createState() => _OrdersFilterBarState();
}

class _OrdersFilterBarState extends State<OrdersFilterBar> {
  late ScrollController _scrollController;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    widget.controller.addListener(_onTabChanged);
  }

  void _onTabChanged() {
    setState(() {
      _selectedIndex = widget.controller.index;
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    widget.controller.removeListener(_onTabChanged);
    super.dispose();
  }

  void _scrollToTab(int index) {
    final tabWidth = 110.0;
    final offset = (index * tabWidth) - 50;
    _scrollController.animateTo(
      offset.clamp(0.0, _scrollController.position.maxScrollExtent),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCubit, OrdersState>(
      builder: (context, state) {
        int totalOrders = 0;
        int pendingCount = 0;
        int approvedCount = 0;
        int preparingCount = 0;
        int receivedCount = 0;
        int submittedCount = 0;
        int cancelledCount = 0;

        state.maybeWhen(
          success: (response) {
            final orders = response.data.data;
            totalOrders = orders.length;

            for (final order in orders) {
              switch (order.status.toLowerCase()) {
                case 'pending':
                  pendingCount++;
                  break;
                case 'approved':
                  approvedCount++;
                  break;
                case 'preparing':
                  preparingCount++;
                  break;
                case 'received':
                  receivedCount++;
                  break;
                case 'submitted':
                  submittedCount++;
                  break;
                case 'cancelled':
                  cancelledCount++;
                  break;
              }
            }
          },
          orElse: () {},
        );

        final tabs = [
          {'label': 'All Orders', 'count': totalOrders},
          {'label': 'Pending', 'count': pendingCount},
          {'label': 'Approved', 'count': approvedCount},
          {'label': 'Preparing', 'count': preparingCount},
          {'label': 'Received', 'count': receivedCount},
          {'label': 'Submitted', 'count': submittedCount},
          {'label': 'Cancelled', 'count': cancelledCount},
        ];

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w),
          child: SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: List.generate(
                tabs.length,
                (index) {
                  final isSelected = _selectedIndex == index;
                  final tab = tabs[index];

                  return Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: GestureDetector(
                      onTap: () {
                        widget.controller.animateTo(index);
                        _scrollToTab(index);
                        context.read<OrdersCubit>().filterByStatus(
                              _getStatusFromIndex(index),
                            );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 14.w,
                          vertical: 8.h,
                        ),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? context.cs.primary
                              : context.cs.surface,
                          border: Border.all(
                            color: isSelected
                                ? context.cs.primary
                                : context.cs.primary.withValues(alpha: 0.2),
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Row(
                          children: [
                            Text(
                              '${tab['label']}',
                              style: TextStyles.label(context).copyWith(
                                fontSize: 13.sp,
                                color: isSelected
                                    ? context.cs.onPrimary
                                    : context.cs.onSurface,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            horizontalSpace(4),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.w,
                                vertical: 2.h,
                              ),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? context.cs.onPrimary.withOpacity(0.2)
                                    : context.appColors.borderColor
                                        .withOpacity(0.3),
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: Text(
                                '${tab['count']}',
                                style: TextStyles.label(context).copyWith(
                                  fontSize: 13.sp,
                                  color: isSelected
                                      ? context.cs.onPrimary
                                      : context.cs.onSurfaceVariant,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }

  String _getStatusFromIndex(int index) {
    switch (index) {
      case 1:
        return 'pending';
      case 2:
        return 'approved';
      case 3:
        return 'preparing';
      case 4:
        return 'received';
      case 5:
        return 'submitted';
      case 6:
        return 'cancelled';
      default:
        return '';
    }
  }
}
