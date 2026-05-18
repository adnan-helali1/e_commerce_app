class CatalogProductUiModel {
  final String name;
  final String supplier;
  final String buyPrice;
  final String sellPrice;
  final String stock;
  final String profit;
  final bool isActive;

  const CatalogProductUiModel({
    required this.name,
    required this.supplier,
    required this.buyPrice,
    required this.sellPrice,
    required this.stock,
    required this.profit,
    this.isActive = true,
  });
}

class SupplierOfferUiModel {
  final String name;
  final String supplier;
  final String status;
  final String buyPrice;
  final String stock;
  final String category;

  const SupplierOfferUiModel({
    required this.name,
    required this.supplier,
    required this.status,
    required this.buyPrice,
    required this.stock,
    required this.category,
  });
}
