import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/routing/routes.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/app_bottom_bar_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CatalogAddProd extends StatelessWidget {
  const CatalogAddProd({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        _showAddProductDialog(context);
      },
      icon: Icon(
        Icons.add,
        size: 16.sp,
        color: context.cs.onPrimary,
      ),
      label: Text(
        'Add Product',
        style: TextStyles.button(context).copyWith(fontSize: 13.sp),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: context.cs.primary,
        padding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 0.h,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.r),
        ),
      ),
    );
  }
}

void _showAddProductDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: '',
    barrierColor: Colors.black54,
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (_, __, ___) => const SizedBox(),
    transitionBuilder: (context, animation, _, __) {
      final curved = CurvedAnimation(
        parent: animation,
        curve: Curves.easeOutBack,
      );

      return Transform.scale(
        scale: curved.value,
        child: Opacity(
          opacity: animation.value,
          child: const _AddProductDialog(),
        ),
      );
    },
  );
}

class _AddProductDialog extends StatelessWidget {
  const _AddProductDialog();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
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
                size: 40.sp,
                color: context.cs.primary,
              ),
              SizedBox(height: 12.h),
              Text(
                'Add Products',
                style: TextStyles.note(context),
              ),
              SizedBox(height: 8.h),
              Text(
                'To add products, go to Suppliers Offers section.',
                textAlign: TextAlign.center,
                style: TextStyles.label(context),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  /// Cancel
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: const Text('Cancel'),
                    ),
                  ),

                  SizedBox(width: 10.w),

                  /// Go to Offers
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        context
                            .read<BottomNavCubit>()
                            .changeIndex(1); // روح على Offers
                      },
                      child: const Text('Go to Offers'),
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
