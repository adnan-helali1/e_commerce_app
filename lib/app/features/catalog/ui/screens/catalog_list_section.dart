import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_item_model.dart';
import 'package:B2B/app/features/catalog/logic/catalog_action_cubit/catalog_action_cubit.dart';
import 'package:B2B/app/features/catalog/logic/catalog_action_cubit/catalog_action_state.dart';
import 'package:B2B/app/features/catalog/logic/catalog_cubit/catalog_cubit.dart';
import 'package:B2B/app/features/catalog/logic/catalog_ui_cubit/catalog_ui_cubit.dart';
import 'package:B2B/app/features/catalog/logic/catalog_ui_cubit/catalog_ui_state.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_empty_section.dart';
import 'package:B2B/app/features/catalog/ui/widgets/catalog_product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatalogListSection extends StatelessWidget {
  const CatalogListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CatalogActionCubit, CatalogActionState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            context.read<CatalogCubit>().refresh(); // 👈 الصح
          },
        );
      },
      child: BlocSelector<CatalogUiCubit, CatalogUiState, List<CatalogItem>>(
        selector: (state) => state.response?.data ?? const [],
        builder: (context, items) {
          if (items.isEmpty) {
            return const CatalogEmptySection();
          }

          return Column(
            children: List.generate(
              items.length,
              (index) => CatalogProductCard(
                key: ValueKey(items[index].id),
                item: items[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
