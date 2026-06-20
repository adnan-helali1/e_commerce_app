import 'package:B2B/app/core/cache/cache_data_source.dart';
import 'package:B2B/app/core/cache/cache_keyes.dart';
import 'package:B2B/app/features/ledger/data/models/ledger_cache_model.dart';

class LedgerLocalDataSource {
  final CacheDataSource<LedgerCacheModel> _cache;

  LedgerLocalDataSource(this._cache);

  // ---------------------------------------------------------------------------
  // Read
  // ---------------------------------------------------------------------------

  Future<LedgerCacheModel?> read({required int page}) {
    return _cache.read(
      boxKey: CacheKeys.ledgerBox,
      dataKey: _buildKey(page: page),
      fromJson: LedgerCacheModel.fromJson,
    );
  }

  // ---------------------------------------------------------------------------
  // Save
  // ---------------------------------------------------------------------------

  Future<void> save(
    LedgerCacheModel model, {
    required int page,
  }) {
    return _cache.save(
      boxKey: CacheKeys.ledgerBox,
      dataKey: _buildKey(page: page),
      data: model.toJson(),
    );
  }

  // ---------------------------------------------------------------------------
  // Clear single page
  // ---------------------------------------------------------------------------

  Future<void> clear({required int page}) {
    return _cache.clear(
      boxKey: CacheKeys.ledgerBox,
      dataKey: _buildKey(page: page),
    );
  }

  // ---------------------------------------------------------------------------
  // Clear all pages
  // ---------------------------------------------------------------------------

  // ---------------------------------------------------------------------------
  // Key builder
  // ---------------------------------------------------------------------------

  String _buildKey({required int page}) => 'ledger_p$page';
}
