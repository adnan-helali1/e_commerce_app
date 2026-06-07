import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/core/widgets/b2b_status_badge.dart';
import 'package:B2B/app/features/offers/logic/add_offer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddOfferLog extends StatefulWidget {
  const AddOfferLog(
      {super.key, required this.supplierProductId, required this.loading});
  final int supplierProductId;
  final bool loading;
  @override
  State<AddOfferLog> createState() => _AddOfferLogState();
}

class _AddOfferLogState extends State<AddOfferLog> {
  final _priceController = TextEditingController();

  bool isActive = true;

  @override
  void dispose() {
    _priceController.dispose();
    super.dispose();
  }

  void _submit() {
    final value = _priceController.text.trim();

    if (value.isEmpty) return;

    context.read<AddOfferCubit>().addOffer(
          supplierProductId: widget.supplierProductId,
          sellPrice: value,
          isActive: isActive,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.w,
        right: 20.w,
        top: 12.h,
        bottom: MediaQuery.of(context).viewInsets.bottom + 20.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Add Offer To Catalog',
            style: TextStyles.label(context).copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          verticalSpace(24),
          TextFormField(
            controller: _priceController,
            keyboardType: const TextInputType.numberWithOptions(
              decimal: true,
            ),
            decoration: InputDecoration(
              labelText: 'Sell Price ',
              labelStyle: TextStyles.label(context).copyWith(
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
              ),
              hintStyle: TextStyles.label(context),
              hintText: '0.00',
            ),
          ),
          verticalSpace(20),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Status',
              style: TextStyles.label(context).copyWith(
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          verticalSpace(12),
          Row(
            children: [
              Expanded(
                child: _StatusButton(
                  selected: isActive,
                  title: 'Active',
                  onTap: () {
                    setState(() {
                      isActive = true;
                    });
                  },
                ),
              ),
              horizontalSpace(10),
              Expanded(
                child: _StatusButton(
                  selected: !isActive,
                  title: 'Inactive',
                  onTap: () {
                    setState(() {
                      isActive = false;
                    });
                  },
                ),
              ),
            ],
          ),
          verticalSpace(24),
          SizedBox(
            width: 160.w,
            height: 50.h,
            child: FilledButton(
              onPressed: widget.loading ? null : _submit,
              child: widget.loading
                  ? const CircularProgressIndicator()
                  : const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatusButton extends StatelessWidget {
  const _StatusButton({
    required this.selected,
    required this.title,
    required this.onTap,
  });

  final bool selected;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = b2bStatusColor(
      context,
      title,
    );

    return InkWell(
      borderRadius: BorderRadius.circular(12.r),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        height: 54.h,
        decoration: BoxDecoration(
          color: selected ? color.withValues(alpha: .08) : Colors.transparent,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: selected ? color : context.cs.outlineVariant,
            width: selected ? 1.5 : 1,
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: selected ? color : Colors.grey,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
