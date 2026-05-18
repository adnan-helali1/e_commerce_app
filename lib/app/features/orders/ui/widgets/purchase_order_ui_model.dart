class PurchaseOrderUiModel {
  final String id;
  final String status;
  final String supplier;
  final List<PurchaseOrderLineUiModel> lines;
  final String date;
  final int itemCount;
  final String total;

  const PurchaseOrderUiModel({
    required this.id,
    required this.status,
    required this.supplier,
    required this.lines,
    required this.date,
    required this.itemCount,
    required this.total,
  });
}

class PurchaseOrderLineUiModel {
  final String title;
  final String amount;

  const PurchaseOrderLineUiModel({
    required this.title,
    required this.amount,
  });
}
