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
        int deliveredCount = 0;
        int submittedCount = 0;

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
                case 'delivered':
                  deliveredCount++;
                  break;
                case 'submitted':
                  submittedCount++;
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
          {'label': 'Delivered', 'count': deliveredCount},
          {'label': 'Submitted', 'count': submittedCount},
        ];

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
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
                                : context.appColors.borderColor,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Row(
                          children: [
                            Text(
                              '${tab['label']}',
                              style: TextStyles.label(context).copyWith(
                                fontSize: 12.sp,
                                color: isSelected
                                    ? context.cs.onPrimary
                                    : context.cs.onSurface,
                                fontWeight: FontWeight.w500,
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
                                    : context.appColors.borderColor,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: Text(
                                '${tab['count']}',
                                style: TextStyles.label(context).copyWith(
                                  fontSize: 11.sp,
                                  color: isSelected
                                      ? context.cs.onPrimary
                                      : context.cs.onSurfaceVariant,
                                  fontWeight: FontWeight.w600,
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
        return 'delivered';
      case 5:
        return 'submitted';
      default:
        return '';
    }
  }
}
