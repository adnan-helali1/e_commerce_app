import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/app_bottom_bar_cubit.dart';
import 'package:B2B/app/features/catalog/ui/widgets/add_prod_dialog.dart';
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
  final navCubit = context.read<BottomNavCubit>();

  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: '',
    barrierColor: context.cs.onSurface.withOpacity(0.5),
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
          child: AddProductDialog(navCubit: navCubit),
        ),
      );
    },
  );
}
