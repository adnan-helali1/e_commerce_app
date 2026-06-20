import 'package:json_annotation/json_annotation.dart';
import 'ledger_response.dart';

part 'ledger_cache_model.g.dart';

// ---------------------------------------------------------------------------
// Root cache model
// ---------------------------------------------------------------------------

@JsonSerializable(explicitToJson: true)
class LedgerCacheModel {
  final List<LedgerEntryCacheModel>? data;
  final LedgerSummaryCacheModel? summary;
  final LedgerPaginationCacheModel? pagination;
  final String? message;
  final dynamic errors;
  final DateTime cachedAt;

  LedgerCacheModel({
    this.data,
    this.summary,
    this.pagination,
    this.message,
    this.errors,
    required this.cachedAt,
  });

  factory LedgerCacheModel.fromJson(Map<String, dynamic> json) =>
      _$LedgerCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$LedgerCacheModelToJson(this);

  /// FROM API → CACHE
  factory LedgerCacheModel.fromResponse(
    LedgerResponse response, {
    DateTime? cachedAt,
  }) {
    return LedgerCacheModel(
      data: response.data.entries.data
          .map(LedgerEntryCacheModel.fromResponse)
          .toList(),
      summary: LedgerSummaryCacheModel.fromResponse(response.data.summary),
      pagination:
          LedgerPaginationCacheModel.fromResponse(response.data.entries),
      message: response.message,
      errors: response.errors,
      cachedAt: cachedAt ?? DateTime.now(),
    );
  }

  /// CACHE → API MODEL
  LedgerResponse toResponse() {
    return LedgerResponse(
      data: LedgerData(
        entries: pagination!.toResponse(
          data?.map((e) => e.toResponse()).toList() ?? [],
        ),
        summary: summary!.toResponse(),
      ),
      message: message ?? '',
      errors: errors,
    );
  }
}

// ---------------------------------------------------------------------------
// Entry cache model
// ---------------------------------------------------------------------------

@JsonSerializable()
class LedgerEntryCacheModel {
  final int? id;
  final int? storeId;
  final String? type;
  final String? sourceType;
  final int? sourceId;
  final String? amount;
  final DateTime? occurredAt;
  final String? notes;
  final int? createdByAdminId;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  LedgerEntryCacheModel({
    this.id,
    this.storeId,
    this.type,
    this.sourceType,
    this.sourceId,
    this.amount,
    this.occurredAt,
    this.notes,
    this.createdByAdminId,
    this.createdAt,
    this.updatedAt,
  });

  factory LedgerEntryCacheModel.fromJson(Map<String, dynamic> json) =>
      _$LedgerEntryCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$LedgerEntryCacheModelToJson(this);

  factory LedgerEntryCacheModel.fromResponse(LedgerEntry e) {
    return LedgerEntryCacheModel(
      id: e.id,
      storeId: e.storeId,
      type: e.type.name,
      sourceType: e.sourceType,
      sourceId: e.sourceId,
      amount: e.amount,
      occurredAt: e.occurredAt,
      notes: e.notes,
      createdByAdminId: e.createdByAdminId,
      createdAt: e.createdAt,
      updatedAt: e.updatedAt,
    );
  }

  LedgerEntry toResponse() {
    return LedgerEntry(
      id: id!,
      storeId: storeId!,
      type: EntryType.values.byName(type!),
      sourceType: sourceType!,
      sourceId: sourceId!,
      amount: amount!,
      occurredAt: occurredAt!,
      notes: notes,
      createdByAdminId: createdByAdminId,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
    );
  }
}

// ---------------------------------------------------------------------------
// Summary cache model
// ---------------------------------------------------------------------------

@JsonSerializable()
class LedgerSummaryCacheModel {
  final double? totalCredits;
  final double? totalDebits;
  final double? balance;

  LedgerSummaryCacheModel({
    this.totalCredits,
    this.totalDebits,
    this.balance,
  });

  factory LedgerSummaryCacheModel.fromJson(Map<String, dynamic> json) =>
      _$LedgerSummaryCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$LedgerSummaryCacheModelToJson(this);

  factory LedgerSummaryCacheModel.fromResponse(LedgerSummary s) {
    return LedgerSummaryCacheModel(
      totalCredits: s.totalCredits,
      totalDebits: s.totalDebits,
      balance: s.balance,
    );
  }

  LedgerSummary toResponse() {
    return LedgerSummary(
      totalCredits: totalCredits!,
      totalDebits: totalDebits!,
      balance: balance!,
    );
  }
}

// ---------------------------------------------------------------------------
// Pagination cache model
// ---------------------------------------------------------------------------

@JsonSerializable()
class LedgerPaginationCacheModel {
  final int? currentPage;
  final int? lastPage;
  final int? perPage;
  final int? total;
  final int? from;
  final int? to;
  final String? path;
  final String? firstPageUrl;
  final String? lastPageUrl;
  final String? nextPageUrl;
  final String? prevPageUrl;

  LedgerPaginationCacheModel({
    this.currentPage,
    this.lastPage,
    this.perPage,
    this.total,
    this.from,
    this.to,
    this.path,
    this.firstPageUrl,
    this.lastPageUrl,
    this.nextPageUrl,
    this.prevPageUrl,
  });

  factory LedgerPaginationCacheModel.fromJson(Map<String, dynamic> json) =>
      _$LedgerPaginationCacheModelFromJson(json);

  Map<String, dynamic> toJson() => _$LedgerPaginationCacheModelToJson(this);

  factory LedgerPaginationCacheModel.fromResponse(LedgerEntries e) {
    return LedgerPaginationCacheModel(
      currentPage: e.currentPage,
      lastPage: e.lastPage,
      perPage: e.perPage,
      total: e.total,
      from: e.from,
      to: e.to,
      path: e.path,
      firstPageUrl: e.firstPageUrl,
      lastPageUrl: e.lastPageUrl,
      nextPageUrl: e.nextPageUrl,
      prevPageUrl: e.prevPageUrl,
    );
  }

  /// Reconstruct [LedgerEntries] — links are not cached (rebuilding them
  /// from the stored URLs is intentionally omitted to keep the cache lean).
  LedgerEntries toResponse(List<LedgerEntry> entries) {
    return LedgerEntries(
      currentPage: currentPage!,
      lastPage: lastPage!,
      perPage: perPage!,
      total: total!,
      from: from!,
      to: to!,
      path: path!,
      firstPageUrl: firstPageUrl!,
      lastPageUrl: lastPageUrl!,
      nextPageUrl: nextPageUrl,
      prevPageUrl: prevPageUrl,
      links: [],
      data: entries,
    );
  }
}
