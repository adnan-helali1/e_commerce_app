import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/catalog/logic/catalog_action_cubit/catalog_action_cubit.dart';
import 'package:B2B/app/features/orders/logic/get_orders/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteDialog extends StatelessWidget {
  final BuildContext dialogContext;
  final dynamic cubit;
  final String type;
  final int Id;
  const DeleteDialog(
      {super.key,
      required this.dialogContext,
      required this.Id,
      required this.type,
      required this.cubit});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: dialogContext.cs.surfaceVariant.withOpacity(1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.warning_amber_rounded,
              color: dialogContext.cs.error,
              size: 50.sp,
            ),
            SizedBox(height: 12.h),
            Text(
              'Delete $type',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'Are you sure you want to delete this $type?',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.sp),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                /// Cancel
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(dialogContext);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: context.cs.onSurface),
                    ),
                  ),
                ),

                SizedBox(width: 10.w),

                /// Delete
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: dialogContext.cs.error,
                    ),
                    onPressed: () {
                      Navigator.pop(dialogContext, true);

                      if (cubit is CatalogActionCubit) {
                        (cubit as CatalogActionCubit).delete(catalogId: Id);
                      } else if (cubit is OrdersCubit) {
                        (cubit as OrdersCubit).delete(orderId: Id);
                      }
                    },
                    child: Text('Delete',
                        style: TextStyle(color: context.cs.surface)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
