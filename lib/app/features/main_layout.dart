import 'package:B2B/app/core/theme/b2b_app_bar.dart';
import 'package:B2B/app/core/widgets/app_bottm_bar.dart';
import 'package:B2B/app/core/widgets/app_bottom_bar.dart';
import 'package:B2B/app/features/catalog/ui/screens/my_catalog_screen.dart';
import 'package:B2B/app/features/home/ui/screens/home_screen.dart';
import 'package:B2B/app/features/orders/ui/screens/purchase_orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BottomNavCubit>();

    final screens = [
      const HomeScreen(),
      const PurchaseOrdersScreen(),
      const MyCatalogScreen(),
      const MyCatalogScreen(),
    ];

    return Scaffold(
      appBar: B2bAppBar(title: 't', subtitle: 's', icon: Icons.home_rounded),
      extendBody: true, // مهم للـ floating
      body: PageView(
        controller: cubit.pageController,
        onPageChanged: cubit.onPageChanged,
        physics: const BouncingScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar: AppBottomNavBar(
        items: const [
          AppBottomNavItem(label: 'الرئيسية', icon: Icons.home_rounded),
          AppBottomNavItem(label: 'الطلبات', icon: Icons.receipt_long),
          AppBottomNavItem(label: 'المخزون', icon: Icons.inventory_2),
          AppBottomNavItem(label: 'الفواتير', icon: Icons.receipt),
        ],
      ),
    );
  }
}
