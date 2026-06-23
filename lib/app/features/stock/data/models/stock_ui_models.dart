enum StockStatus { wellStocked, inStock, lowStock, outOfStock }

class InventoryItem {
  final String name;
  final String supplier;
  final int currentStock;
  final int maxStock;
  final int minStock;
  final String lastUpdated;
  final StockStatus status;

  const InventoryItem({
    required this.name,
    required this.supplier,
    required this.currentStock,
    required this.maxStock,
    required this.minStock,
    required this.lastUpdated,
    required this.status,
  });
}
