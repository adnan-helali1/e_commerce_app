import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/catalog/logic/catalog_action_cubit/catalog_action_cubit.dart';
import 'package:B2B/app/features/catalog/logic/catalog_action_cubit/catalog_action_state.dart';

import 'package:B2B/app/core/widgets/add_offer_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PutchOfferSheet extends StatelessWidget {
  final int supplierProductId;
  final bool isEdit;
  final double? initialSellPrice;
  final bool? initialIsActive;

  const PutchOfferSheet({
    super.key,
    required this.supplierProductId,
    this.isEdit = false,
    this.initialSellPrice,
    this.initialIsActive,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CatalogActionCubit>(),
      child: BlocConsumer<CatalogActionCubit, CatalogActionState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () {
              Navigator.of(context).pop(true);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: context.appColors.success,
                  content: const Text('Offer updated successfully'),
                ),
              );
            },
            failure: (error) {
              Navigator.of(context).pop(true);

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
          final loading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return AddOfferLog(
            supplierProductId: supplierProductId,
            loading: loading,
            isEdit: isEdit,
            initialSellPrice: initialSellPrice,
            initialIsActive: initialIsActive,
          );
        },
      ),
    );
  }
}
