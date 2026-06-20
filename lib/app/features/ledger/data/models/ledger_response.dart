import 'package:freezed_annotation/freezed_annotation.dart';

part 'ledger_response.freezed.dart';
part 'ledger_response.g.dart';

// ---------------------------------------------------------------------------
// Root response
// ---------------------------------------------------------------------------

@freezed
abstract class LedgerResponse with _$LedgerResponse {
  const factory LedgerResponse({
    required LedgerData data,
    required String message,
    dynamic errors,
  }) = _LedgerResponse;

  factory LedgerResponse.fromJson(Map<String, dynamic> json) =>
      _$LedgerResponseFromJson(json);
}

// ---------------------------------------------------------------------------
// data
// ---------------------------------------------------------------------------

@freezed
abstract class LedgerData with _$LedgerData {
  const factory LedgerData({
    required LedgerEntries entries,
    required LedgerSummary summary,
  }) = _LedgerData;

  factory LedgerData.fromJson(Map<String, dynamic> json) =>
      _$LedgerDataFromJson(json);
}

// ---------------------------------------------------------------------------
// data.entries  (paginated list)
// ---------------------------------------------------------------------------

@freezed
abstract class LedgerEntries with _$LedgerEntries {
  const factory LedgerEntries({
    @JsonKey(name: 'current_page') required int currentPage,
    required List<LedgerEntry> data,
    @JsonKey(name: 'first_page_url') required String firstPageUrl,
    required int from,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'last_page_url') required String lastPageUrl,
    required List<PaginationLink> links,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    required String path,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'prev_page_url') String? prevPageUrl,
    required int to,
    required int total,
  }) = _LedgerEntries;

  factory LedgerEntries.fromJson(Map<String, dynamic> json) =>
      _$LedgerEntriesFromJson(json);
}

// ---------------------------------------------------------------------------
// data.entries.data[]  (individual ledger entry)
// ---------------------------------------------------------------------------

enum EntryType {
  @JsonValue('credit')
  credit,
  @JsonValue('debit')
  debit,
}

@freezed
abstract class LedgerEntry with _$LedgerEntry {
  const factory LedgerEntry({
    required int id,
    @JsonKey(name: 'store_id') required int storeId,
    required EntryType type,
    @JsonKey(name: 'source_type') required String sourceType,
    @JsonKey(name: 'source_id') required int sourceId,
    required String amount,
    @JsonKey(name: 'occurred_at') required DateTime occurredAt,
    String? notes,
    @JsonKey(name: 'created_by_admin_id') int? createdByAdminId,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _LedgerEntry;

  factory LedgerEntry.fromJson(Map<String, dynamic> json) =>
      _$LedgerEntryFromJson(json);
}

// ---------------------------------------------------------------------------
// data.entries.links[]  (pagination links)
// ---------------------------------------------------------------------------

@freezed
abstract class PaginationLink with _$PaginationLink {
  const factory PaginationLink({
    String? url,
    required String label,
    int? page,
    required bool active,
  }) = _PaginationLink;

  factory PaginationLink.fromJson(Map<String, dynamic> json) =>
      _$PaginationLinkFromJson(json);
}

// ---------------------------------------------------------------------------
// data.summary
// ---------------------------------------------------------------------------

@freezed
abstract class LedgerSummary with _$LedgerSummary {
  const factory LedgerSummary({
    @JsonKey(name: 'total_credits') required double totalCredits,
    @JsonKey(name: 'total_debits') required double totalDebits,
    required double balance,
  }) = _LedgerSummary;

  factory LedgerSummary.fromJson(Map<String, dynamic> json) =>
      _$LedgerSummaryFromJson(json);
}
