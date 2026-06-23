import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/stock/data/models/get_stock_models/get_stock_response.dart';
import 'package:flutter/material.dart';

class StockDetailsDialog extends StatelessWidget {
  final StockItem item;

  const StockDetailsDialog({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final storeProduct = item.storeProduct;
    final supplierProduct = storeProduct.supplierProduct;
    final product = supplierProduct.product;
    final supplier = supplierProduct.supplier;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      insetPadding: const EdgeInsets.all(16),
      child: Container(
        constraints: const BoxConstraints(maxHeight: 650),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.cs.surface,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            /// HANDLE
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            const SizedBox(height: 12),

            Text(
              "Stock Details",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: context.cs.primary,
              ),
            ),

            const SizedBox(height: 16),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _section("Stock Info", [
                      _row("ID", item.id.toString()),
                      _row("Quantity", item.quantity.toString()),
                      _row("Min Stock", item.minStock.toString()),
                      _row("Created", item.createdAt.toString()),
                      _row("Updated", item.updatedAt.toString()),
                    ]),
                    _section("Store Product", [
                      _row("ID", storeProduct.id.toString()),
                      _row("Sell Price", storeProduct.sellPrice),
                      _row("Active", storeProduct.isActive ? "Yes" : "No"),
                    ]),
                    _section("Supplier Product", [
                      _row("Buy Price", supplierProduct.buyPrice),
                      _row("Stock Qty",
                          supplierProduct.stockQuantity.toString()),
                      _row("Status", supplierProduct.status),
                    ]),
                    _section("Product", [
                      _row("Name", product.name),
                      _row("Description", product.description ?? "-"),
                    ]),
                    _section("Supplier", [
                      _row("Name", supplier.name),
                      _row("Phone", supplier.phone ?? "-"),
                      _row("Email", supplier.email ?? "-"),
                    ]),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Close"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _section(String title, List<Widget> children) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          ...children,
        ],
      ),
    );
  }

  Widget _row(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

void showStockDetailsDialog(
  BuildContext context,
  StockItem item,
) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: "Stock Details",
    transitionDuration: const Duration(milliseconds: 250),
    pageBuilder: (_, __, ___) {
      return Center(
        child: StockDetailsDialog(item: item),
      );
    },
    transitionBuilder: (_, animation, __, child) {
      final curved = CurvedAnimation(
        parent: animation,
        curve: Curves.easeOutCubic,
      );

      return FadeTransition(
        opacity: curved,
        child: ScaleTransition(
          scale: Tween<double>(begin: 0.9, end: 1.0).animate(curved),
          child: child,
        ),
      );
    },
  );
}
