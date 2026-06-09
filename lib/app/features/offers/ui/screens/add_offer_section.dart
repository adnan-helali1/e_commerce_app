import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/offers/logic/add_offer_cubit/add_offer_cubit.dart';
import 'package:B2B/app/features/offers/logic/add_offer_cubit/add_offer_state.dart';
import 'package:B2B/app/features/offers/ui/widgets/add_offer_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddOfferSheet extends StatelessWidget {
  final int supplierProductId;

  const AddOfferSheet({
    super.key,
    required this.supplierProductId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOfferCubit, AddOfferState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (_) {
            Navigator.of(context).pop(true);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: context.appColors.success,
                content: const Text('Offer added successfully'),
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
            supplierProductId: supplierProductId, loading: loading);
      },
    );
  }
}
