import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/catalog/logic/catalog_action_cubit/catalog_action_cubit.dart';
import 'package:B2B/app/features/catalog/logic/catalog_action_cubit/catalog_action_state.dart';
import 'package:B2B/app/core/widgets/add_offer_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditCatalogSheet extends StatelessWidget {
  final int catalogId;
  final double sellPrice;
  final bool isActive;

  const EditCatalogSheet({
    super.key,
    required this.catalogId,
    required this.sellPrice,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CatalogActionCubit>(),
      child: BlocConsumer<CatalogActionCubit, CatalogActionState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () {
              Navigator.pop(context);

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: context.appColors.success,
                  content: const Text(
                    'Catalog item updated successfully',
                  ),
                ),
              );
            },
            failure: (error) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: context.appColors.failure,
                  content: Text(error),
                ),
              );
            },
          );
        },
        builder: (context, state) {
          return AddOfferLog(
            supplierProductId: catalogId,
            loading: state.maybeWhen(
              loading: () => true,
              orElse: () => false,
            ),
            isEdit: true,
            initialSellPrice: sellPrice,
            initialIsActive: isActive,
          );
        },
      ),
    );
  }
}
