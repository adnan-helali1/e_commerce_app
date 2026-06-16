import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/widgets/delete_dialog.dart';
import 'package:B2B/app/features/catalog/logic/catalog_action_cubit/catalog_action_cubit.dart';
import 'package:B2B/app/features/catalog/ui/screens/putch_offer_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatalogActions extends StatelessWidget {
  final bool isActive;
  final int catalogId;
  final double sellPrice;

  const CatalogActions({
    super.key,
    required this.isActive,
    required this.catalogId,
    required this.sellPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        //active
        _IconAction(
          onPressed: () {
            context.read<CatalogActionCubit>().toggleActive(
                  catalogId: catalogId,
                  sellPrice: sellPrice,
                  isActive: isActive,
                );
          },
          icon: isActive
              ? Icons.power_settings_new_rounded
              : Icons.power_off_rounded,
          color: isActive
              ? context.appColors.success
              : context.cs.onSurfaceVariant,
        ),
        //edit
        _IconAction(
          icon: Icons.edit_outlined,
          color: context.appColors.info,
          onPressed: () {
            {
              showModalBottomSheet(
                backgroundColor: context.cs.surface,
                context: context,
                isScrollControlled: true,
                useSafeArea: true,
                showDragHandle: true,
                //update catslog cubit
                builder: (_) => PutchOfferSheet(
                  supplierProductId: catalogId,
                  isEdit: true,
                  initialSellPrice: sellPrice,
                  initialIsActive: isActive,
                ),
              );
            }
          },
        ),
        //delete
        _IconAction(
            onPressed: () {
              final cubit = context.read<CatalogActionCubit>();

              showDialog(
                context: context,
                builder: (dialogContext) {
                  return DeleteDialog(
                    dialogContext: dialogContext,
                    Id: catalogId,
                    cubit: cubit,
                    type: ' Item',
                  );
                },
              );
            },
            icon: Icons.delete_outline_rounded,
            color: context.cs.error),
      ],
    );
  }
}

class _IconAction extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback? onPressed;

  const _IconAction({
    required this.icon,
    required this.color,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 28.r,
      height: 28.r,
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: 18.sp,
          fontWeight: FontWeight.w700,
        ),
        padding: EdgeInsets.zero,
      ),
    );
  }
}
