import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/catalog/logic/catalog_cubit/catalog_cubit.dart';
import 'package:B2B/app/features/catalog/logic/catalog_ui_cubit/catalog_ui_cubit.dart';
import 'package:B2B/app/features/catalog/logic/catalog_ui_cubit/catalog_ui_state.dart';
import 'package:B2B/app/features/catalog/ui/screens/catalog_list_section.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_active_filter.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_add_prod.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_center_row.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_search_field.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_summary_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCatalogScreen extends StatelessWidget {
  const MyCatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => CatalogUiCubit(ctx.read<CatalogCubit>()),
      child: const _MyCatalogBody(),
    );
  }
}

class _MyCatalogBody extends StatelessWidget {
  const _MyCatalogBody();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<CatalogUiCubit, CatalogUiState>(
        listenWhen: (previous, current) =>
            current.error != null && current.response != null,
        listener: (context, state) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: context.appColors.failure,
              content: Text(state.error!),
            ),
          );
          context.read<CatalogUiCubit>().onErrorShown();
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const SizedBox.shrink();
          }

          final response = state.response;
          if (response == null) {
            return const SizedBox.shrink();
          }

          return Scaffold(
            body: RefreshIndicator(
              onRefresh: () => context.read<CatalogCubit>().refresh(),
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  CatalogSummaryHeader(summary: response.summary),
                  verticalSpace(12),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: const CatalogSearchField(
                      hintText: 'Search catalog...',
                    ),
                  ),
                  verticalSpace(10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: CatalogActiveFilter(
                            value: state.activeOnly,
                            onChanged: (_) => context
                                .read<CatalogUiCubit>()
                                .toggleActiveOnly(),
                          ),
                        ),
                        horizontalSpace(8),
                        CatalogAddProd(),
                      ],
                    ),
                  ),
                  verticalSpace(15),
                  CatalogSummaryCenter(summary: response.summary),
                  verticalSpace(10),
                  const CatalogListSection(),
                  verticalSpace(24),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
