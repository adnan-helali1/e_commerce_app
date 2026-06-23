import 'package:B2B/app/core/di/dependency_injection.dart';
import 'package:B2B/app/core/widgets/update_profile_log.dart';
import 'package:B2B/app/features/stock/data/models/add_stock/add_stock_request.dart';
import 'package:B2B/app/features/stock/logic/add_stock/add_stock_cubit.dart';
import 'package:B2B/app/features/stock/logic/add_stock/add_stock_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddStockSheet extends StatefulWidget {
  final int storeProductId;

  const AddStockSheet({super.key, required this.storeProductId});

  @override
  State<AddStockSheet> createState() => _AddStockSheetState();
}

class _AddStockSheetState extends State<AddStockSheet> {
  final _productIdController = TextEditingController();
  final _quantityController = TextEditingController();
  final _priceController = TextEditingController();
  final _sellerController = TextEditingController();

  @override
  void dispose() {
    _productIdController.dispose();
    _quantityController.dispose();
    _priceController.dispose();
    _sellerController.dispose();
    super.dispose();
    if (_quantityController.text.isEmpty ||
        _priceController.text.isEmpty ||
        _sellerController.text.isEmpty) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddStockCubit>(),
      child: BlocConsumer<AddStockCubit, AddStockState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (_) {
              Navigator.of(context).pop(true);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  backgroundColor: Colors.green,
                  content: Text('Stock added successfully'),
                ),
              );
            },
            failure: (error) {
              Navigator.of(context).pop(true);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
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

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GenericUpdateForm(
                title: "Add Stock",
                loading: loading,
                fields: [
                  FormFieldConfig(
                    label: "Quantity",
                    controller: _quantityController,
                    keyboardType: TextInputType.number,
                  ),
                  FormFieldConfig(
                    label: "Unit Price",
                    controller: _priceController,
                    keyboardType: TextInputType.number,
                  ),
                  FormFieldConfig(
                    label: "Seller Name",
                    controller: _sellerController,
                  ),
                ],
                onSubmit: () {
                  _submit(context);
                },
              ),
            ],
          );
        },
      ),
    );
  }

  void _submit(BuildContext context) {
    final request = AddStockRequest(
      storeProductId: widget.storeProductId, // 👈 من الضغط
      quantity: int.parse(_quantityController.text),
      unitPrice: double.parse(_priceController.text),
      sellerName: _sellerController.text,
    );

    context.read<AddStockCubit>().addStock(request);
  }
}
