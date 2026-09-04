import 'package:B2B/app/core/networking/api_result.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_item_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_meta_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_models/catalog_summary_model.dart';
import 'package:B2B/app/features/catalog/data/models/catalog_response.dart';
import 'package:B2B/app/features/catalog/data/repos/get_catalog/catalog_repo.dart';
import 'package:B2B/app/features/catalog/logic/catalog_action_cubit/catalog_action_cubit.dart';
import 'package:B2B/app/features/catalog/logic/catalog_cubit/catalog_cubit.dart';
import 'package:B2B/app/features/catalog/logic/catalog_cubit/catalog_state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('update and delete refresh the visible catalog state', () async {
    final repo = _CatalogRepoFake();
    final catalogCubit = CatalogCubit(repo);
    final actionCubit = CatalogActionCubit(repo, catalogCubit);
    addTearDown(actionCubit.close);
    addTearDown(catalogCubit.close);

    await catalogCubit.load();
    expect(_items(catalogCubit).single.sellPrice, 12);

    await actionCubit.patch(
      catalogId: 1,
      sellPrice: 18,
      isActive: true,
    );
    expect(_items(catalogCubit).single.sellPrice, 18);
    expect(repo.remoteFetches, 2);

    await actionCubit.delete(catalogId: 1);
    expect(_items(catalogCubit), isEmpty);
    expect(repo.remoteFetches, 3);
  });
}

List<CatalogItem> _items(CatalogCubit cubit) {
  return cubit.state.when(
    initial: () => const [],
    loading: () => const [],
    success: (response) => response.data,
    failure: (_) => const [],
  );
}

class _CatalogRepoFake implements CatalogRepo {
  var remoteFetches = 0;
  var _items = [_item(sellPrice: 12)];

  @override
  Future<ApiResult<void>> patchCatalogItem({
    required int catalogId,
    required double sellPrice,
    required bool isActive,
  }) async {
    _items = [
      _items.single.copyWith(sellPrice: sellPrice, isActive: isActive),
    ];
    return const ApiResult.success(null);
  }

  @override
  Future<ApiResult<void>> deleteCatalogItem({required int catalogId}) async {
    _items = [];
    return const ApiResult.success(null);
  }

  @override
  Future<ApiResult<CatalogResponse>> getCatalog({
    required int page,
    required bool? isActive,
    required int perPage,
    required String search,
    bool forceRefresh = false,
  }) async {
    remoteFetches++;
    return ApiResult.success(_response(_items));
  }

  @override
  Future<void> clearCatalog({
    required int page,
    required bool? isActive,
    required int perPage,
    required String search,
  }) async {}

  @override
  Future<CatalogResponse?> getCachedCatalog({
    required int page,
    required bool? isActive,
    required int perPage,
    required String search,
  }) async =>
      null;

  @override
  Future<DateTime?> getCachedCatalogAt({
    required int page,
    required bool? isActive,
    required int perPage,
    required String search,
  }) async =>
      null;

  @override
  bool shouldRefreshCatalog(DateTime? cachedAt) => true;
}

CatalogItem _item({required double sellPrice}) {
  return CatalogItem(
    id: 1,
    supplierProductId: 10,
    name: 'Product',
    supplierName: 'Supplier',
    buyPrice: 10,
    sellPrice: sellPrice,
    profitPerUnit: sellPrice - 10,
    profitPercentage: 20,
    stock: 4,
    totalProfit: 8,
    isActive: true,
  );
}

CatalogResponse _response(List<CatalogItem> items) {
  return CatalogResponse(
    data: List.of(items),
    summary: CatalogSummary(
      totalProducts: items.length,
      activeProducts: items.where((item) => item.isActive).length,
      totalProfit: items.fold(0, (sum, item) => sum + item.totalProfit),
    ),
    meta: CatalogMeta(
      currentPage: 1,
      lastPage: 1,
      perPage: 15,
      total: items.length,
    ),
  );
}
