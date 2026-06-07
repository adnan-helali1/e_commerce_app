import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/core/helpers/spacing.dart';
import 'package:B2B/app/core/theme/textstyles.dart';
import 'package:B2B/app/features/offers/logic/add_offer_cubit.dart';
import 'package:B2B/app/features/offers/logic/add_offer_state.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddOfferSheet extends StatefulWidget {
  final int supplierProductId;

  const AddOfferSheet({
    super.key,
    required this.supplierProductId,
  });

  @override
  State<AddOfferSheet> createState() => _AddOfferSheetState();
}

class _AddOfferSheetState extends State<AddOfferSheet> {
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
    return BlocConsumer<AddOfferCubit, AddOfferState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (_) {
            context.pop;
            //    context.read<offersCubit>().refresh();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Offer added successfully'),
              ),
            );
          },
          failure: (error) {
            context.pop;

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
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
                style: TextStyles.label(context),
              ),
              verticalSpace(24),
              TextFormField(
                controller: _priceController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: const InputDecoration(
                  labelText: 'Sell Price',
                  hintText: '0.00',
                ),
              ),
              verticalSpace(20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Status',
                  style: TextStyles.label(context),
                ),
              ),
              verticalSpace(12),
              Row(
                children: [
                  Expanded(
                    child: _StatusButton(
                      selected: isActive,
                      title: 'Active',
                      color: Colors.green,
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
                      color: Colors.red,
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
                width: double.infinity,
                height: 50.h,
                child: FilledButton(
                  onPressed: loading ? null : _submit,
                  child: loading
                      ? const CircularProgressIndicator()
                      : const Text('Submit'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _StatusButton extends StatelessWidget {
  final bool selected;
  final String title;
  final Color color;
  final VoidCallback onTap;

  const _StatusButton({
    required this.selected,
    required this.title,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        height: 50,
        decoration: BoxDecoration(
          color: selected ? color.withOpacity(.15) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected ? color : Colors.grey.shade300,
            width: 1.5,
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
