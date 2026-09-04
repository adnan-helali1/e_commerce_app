import 'dart:async';

import 'package:B2B/app/core/connection/connection_status.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/widgets/app_bottom_bar_cubit.dart';
import 'package:B2B/app/core/widgets/b2b_app_bar.dart';
import 'package:B2B/app/core/widgets/app_bottom_bar.dart';
import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/features/catalog/logic/catalog_cubit/catalog_cubit.dart';
import 'package:B2B/app/features/catalog/ui/screens/my_catalog_screen.dart';
import 'package:B2B/app/features/home/logic/home_cubit.dart';
import 'package:B2B/app/features/home/ui/screens/home_screen.dart';
import 'package:B2B/app/features/ledger/logic/cubit/ledger_cubit.dart';
import 'package:B2B/app/features/ledger/ui/screens/ledger_screen.dart';
import 'package:B2B/app/features/offers/logic/offers_cubit/offers_cubit.dart';
import 'package:B2B/app/features/offers/ui/screens/offers_screen.dart';
import 'package:B2B/app/features/orders/logic/get_orders/orders_cubit.dart';
import 'package:B2B/app/features/orders/ui/screens/purchase_orders_screen.dart';
import 'package:B2B/app/features/stock/logic/get_stock/get_stock_cubit.dart';
import 'package:B2B/app/features/stock/ui/screens/stock_screen.dart';
import 'package:B2B/app/features/profile/logic/get_profile/profile_cubit.dart';
import 'package:B2B/app/features/profile/logic/get_profile/profile_state.dart';
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

  @override
  void initState() {
    super.initState();
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

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<HomeCubit>()..load()),
        BlocProvider(create: (_) => getIt<OffersCubit>()),
        BlocProvider(create: (_) => getIt<CatalogCubit>()),
        BlocProvider(create: (_) => getIt<OrdersCubit>()),
        BlocProvider(create: (_) => getIt<LedgerCubit>()..load()),
        BlocProvider(create: (_) => getIt<GetStockCubit>()),
        BlocProvider(create: (_) => getIt<ProfileCubit>()),
      ],
      child: Builder(
        builder: (context) => BlocListener<ConnectivityCubit, ConnectionStatus>(
          listenWhen: (previous, current) =>
              previous == ConnectionStatus.disconnected &&
              current == ConnectionStatus.connected,
          listener: (context, _) => _refreshVisiblePage(context),
          child: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, profileState) {
              final profile = profileState.maybeWhen(
                success: (response) => response.data,
                orElse: () => null,
              );
              return Scaffold(
                appBar: B2bAppBar(
                  title: profile?.name ??
                      _storeName ??
                      context.l10n.storeFallbackTitle,
                  subtitle: profile?.ownerName ?? _ownerName ?? '',
                  imageUrl: profile?.imageUrl,
                ),
                extendBody: true,
                body: PageView(
                  controller: cubit.pageController,
                  onPageChanged: cubit.onPageChanged,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    HomeScreen(),
                    OffersScreen(),
                    MyCatalogScreen(),
                    PurchaseOrdersScreen(),
                    LedgerScreen(),
                    InventoryOverviewScreen(),
                  ],
                ),
                bottomNavigationBar: AppBottomNavBar(
                  items: [
                    AppBottomNavItem(
                      label: context.l10n.navHome,
                      icon: Icons.home_rounded,
                    ),
                    AppBottomNavItem(
                      label: context.l10n.navOffers,
                      icon: Icons.inventory_2_outlined,
                    ),
                    AppBottomNavItem(
                      label: context.l10n.navCatalog,
                      icon: Icons.map_outlined,
                    ),
                    AppBottomNavItem(
                      label: context.l10n.navOrders,
                      icon: Icons.shopping_bag_outlined,
                    ),
                    AppBottomNavItem(
                      label: context.l10n.navLedger,
                      icon: Icons.description_outlined,
                    ),
                    AppBottomNavItem(
                      label: context.l10n.navStock,
                      icon: Icons.store_outlined,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _refreshVisiblePage(BuildContext context) {
    final index = context.read<BottomNavCubit>().state.index;
    final refresh = switch (index) {
      0 => context.read<HomeCubit>().refresh(),
      1 => context.read<OffersCubit>().refresh(),
      2 => context.read<CatalogCubit>().refresh(),
      3 => context.read<OrdersCubit>().refresh(),
      4 => context.read<LedgerCubit>().refresh(),
      5 => context.read<GetStockCubit>().refresh(),
      _ => Future<void>.value(),
    };
    unawaited(refresh);
  }
}
