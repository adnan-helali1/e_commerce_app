import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/app_bottom_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddProductDialog extends StatelessWidget {
  final BottomNavCubit navCubit;

  const AddProductDialog({required this.navCubit});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: context.cs.onSurface.withOpacity(0.5),
        child: Container(
          width: 320.w,
          padding: EdgeInsets.all(20.w),
          decoration: BoxDecoration(
            color: context.cs.surface,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.info_outline,
                size: 60.sp,
                color: context.cs.primary,
              ),
              verticalSpace(12),
              Text(
                'Add Products',
                style: TextStyles.note(context).copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
              verticalSpace(10),
              Text(
                'To add products, go to Suppliers Offers section.',
                textAlign: TextAlign.center,
                style: TextStyles.label(context),
              ),
              verticalSpace(20),
              Row(
                children: [
                  /// Cancel
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.cs.surface,
                        foregroundColor: context.cs.onSurface,
                        side: BorderSide(color: context.cs.surface),
                      ),
                      onPressed: () {
                        context.pop();
                      },
                      child: const Text('Cancel'),
                    ),
                  ),

                  horizontalSpace(12),

                  /// Go to Offers
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.cs.primary,
                        foregroundColor: context.cs.onPrimary,
                      ),
                      onPressed: () {
                        navCubit.changeIndex(1);
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Go to Offers',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13.sp),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
