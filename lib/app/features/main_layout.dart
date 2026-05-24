import 'package:B2B/app/core/widgets/app_bottm_bar.dart';
import 'package:B2B/app/core/widgets/b2b_app_bar.dart';
import 'package:B2B/app/core/widgets/app_bottom_bar.dart';
import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/features/catalog/ui/screens/my_catalog_screen.dart';
import 'package:B2B/app/features/home/logic/home_cubit.dart';
import 'package:B2B/app/features/home/ui/screens/home_screen.dart';
import 'package:B2B/app/features/orders/ui/screens/purchase_orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:B2B/app/core/helpers/shared_pref_helper.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  String? _storeName;
  String? _ownerName;

  late final HomeCubit _homeCubit;

  @override
  void initState() {
    super.initState();

    /// 🔥 خذ الكيوبت مرة وحدة
    _homeCubit = getIt<HomeCubit>();

    /// 🔥 أهم سطر (حل المشكلة)
    _homeCubit.load();

    _loadIdentity();
  }

  Future<void> _loadIdentity() async {
    final storeName = await SharedPrefHelper.getStoreName();
    setState(() {
      _storeName = storeName;
    });
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<BottomNavCubit>();

    final screens = [
      const HomeScreen(),
      const PurchaseOrdersScreen(),
      const MyCatalogScreen(),
      const MyCatalogScreen(),
    ];

    return BlocProvider.value(
      value: _homeCubit,
      child: Scaffold(
        appBar: B2bAppBar(
          title: _storeName ?? 'Store',
          subtitle: _ownerName ?? '',
        ),
        extendBody: true,
        body: PageView(
          controller: cubit.pageController,
          onPageChanged: cubit.onPageChanged,
          physics: const BouncingScrollPhysics(),
          children: screens,
        ),
        bottomNavigationBar: AppBottomNavBar(
          items: const [
            AppBottomNavItem(label: 'Home', icon: Icons.home_rounded),
            AppBottomNavItem(label: 'Orders', icon: Icons.receipt_long),
            AppBottomNavItem(label: 'Inventory', icon: Icons.inventory_2),
            AppBottomNavItem(label: 'Invoices', icon: Icons.receipt),
          ],
        ),
      ),
    );
  }

  /// ❌ لا تسكر Singleton Cubit
  /// (مهم جداً)
}
