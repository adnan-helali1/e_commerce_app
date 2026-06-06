import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/offers/logic/add_offer_cubit.dart';
import 'package:B2B/app/features/offers/ui/widgets/add_offer_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddOfferButton extends StatelessWidget {
  const AddOfferButton({
    required this.supplierProductId,
  });
  final int supplierProductId;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 78.w,
      height: 36.h,
      child: ElevatedButton.icon(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            useSafeArea: true,
            showDragHandle: true,
            builder: (_) => BlocProvider(
              create: (_) => getIt<AddOfferCubit>(),
              child: AddOfferSheet(
                supplierProductId: supplierProductId,
              ),
            ),
          );
        },
        icon: Icon(
          Icons.add_rounded,
          size: 17.sp,
          color: context.cs.surface,
        ),
        label: Text(
          'Add',
          style: TextStyles.button(context).copyWith(
            fontSize: 14.sp,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: context.cs.primary,
          foregroundColor: context.cs.onSecondary,
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.r),
          ),
        ),
      ),
    );
  }
}
