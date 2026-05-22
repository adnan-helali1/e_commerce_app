import 'package:B2B/app/core/helpers/extensions.dart';
import 'package:B2B/app/features/home/data/models/home_dashboard_response.dart';
import 'package:B2B/app/features/home/data/models/home_ui_models.dart';

List<RecentOrderPreview> mapRecentOrders(HomeDashboardResponse r) {
  return (r.recentOrders ?? []).map((o) {
    final supplier = o.supplierName ?? o.partyName ?? '';
    return RecentOrderPreview(
      id: '#${o.code ?? o.id ?? ''}',
      status: (o.status ?? '').toString(),
      supplier: supplier,
      date: o.createdAt.toDayMonthYear,
      itemCount: o.itemsCount ?? 1,
      total: o.total != null ? '\$${o.total!.toStringAsFixed(2)}' : '-',
      lines: (o.items ?? []).map((it) {
        final qty = it.quantity ?? 1;
        final price = it.lineTotal ?? ((it.unitPrice ?? 0) * qty);
        final title = '${qty}x ${it.productName ?? ''}';
        final amount = '\$${price.toStringAsFixed(2)}';
        return OrderLinePreview(title: title, amount: amount);
      }).toList(),
    );
  }).toList();
}
