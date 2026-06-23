import 'package:B2B/app/core/widgets/update_profile_log.dart';
import 'package:flutter/material.dart';

class AddStockRequest {
  final int storeProductId;
  final int quantity;
  final double unitPrice;
  final String sellerName;

  AddStockRequest({
    required this.storeProductId,
    required this.quantity,
    required this.unitPrice,
    required this.sellerName,
  });

  Map<String, dynamic> toJson() => {
        'store_product_id': storeProductId,
        'quantity': quantity,
        'unit_price': unitPrice,
        'seller_name': sellerName,
      };
}

class AddStockSheet extends StatefulWidget {
  const AddStockSheet({super.key});

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
  }

  void _submit(BuildContext context) {
    final request = AddStockRequest(
      storeProductId: int.tryParse(_productIdController.text) ?? 0,
      quantity: int.tryParse(_quantityController.text) ?? 0,
      unitPrice: double.tryParse(_priceController.text) ?? 0,
      sellerName: _sellerController.text.trim(),
    );

    //  context.read<StockCubit>().addStock(request);
  }

  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //   create: (_) => getIt<StockCubit>(),
    //   child: BlocConsumer<StockCubit, StockState>(
    //     listener: (context, state) {
    //       state.whenOrNull(
    //         success: (_) {
    //           Navigator.pop(context, true);

    //           ScaffoldMessenger.of(context).showSnackBar(
    //             SnackBar(
    //               backgroundColor: context.appColors.success,
    //               content: const Text("Stock added successfully"),
    //             ),
    //           );
    //         },
    //         failure: (error) {
    //           ScaffoldMessenger.of(context).showSnackBar(
    //             SnackBar(
    //               backgroundColor: context.appColors.failure,
    //               content: Text(error),
    //             ),
    //           );
    //         },
    //       );
    //     },
    //     builder: (context, state) {
    //       final loading = state.maybeWhen(
    //         loading: () => true,
    //         orElse: () => false,
    //       );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GenericUpdateForm(
          title: "Add Stock",
          loading: false,
          fields: [
            FormFieldConfig(
              label: "Store Product ID",
              controller: _productIdController,
              keyboardType: TextInputType.number,
            ),
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
          onSubmit: () => _submit(context),
        ),
      ],
    );
  }
  //   ),
  // );
}
// }
