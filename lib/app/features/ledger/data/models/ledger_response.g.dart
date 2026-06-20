// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LedgerResponse _$LedgerResponseFromJson(Map<String, dynamic> json) =>
    _LedgerResponse(
      data: LedgerData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
      errors: json['errors'],
    );

Map<String, dynamic> _$LedgerResponseToJson(_LedgerResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'errors': instance.errors,
    };

_LedgerData _$LedgerDataFromJson(Map<String, dynamic> json) => _LedgerData(
      entries: LedgerEntries.fromJson(json['entries'] as Map<String, dynamic>),
      summary: LedgerSummary.fromJson(json['summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LedgerDataToJson(_LedgerData instance) =>
    <String, dynamic>{
      'entries': instance.entries,
      'summary': instance.summary,
    };

_LedgerEntries _$LedgerEntriesFromJson(Map<String, dynamic> json) =>
    _LedgerEntries(
      currentPage: (json['current_page'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => LedgerEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String,
      from: (json['from'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      lastPageUrl: json['last_page_url'] as String,
      links: (json['links'] as List<dynamic>)
          .map((e) => PaginationLink.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'] as String?,
      path: json['path'] as String,
      perPage: (json['per_page'] as num).toInt(),
      prevPageUrl: json['prev_page_url'] as String?,
      to: (json['to'] as num).toInt(),
      total: (json['total'] as num).toInt(),
    );

Map<String, dynamic> _$LedgerEntriesToJson(_LedgerEntries instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_LedgerEntry _$LedgerEntryFromJson(Map<String, dynamic> json) => _LedgerEntry(
      id: (json['id'] as num).toInt(),
      storeId: (json['store_id'] as num).toInt(),
      type: $enumDecode(_$EntryTypeEnumMap, json['type']),
      sourceType: json['source_type'] as String,
      sourceId: (json['source_id'] as num).toInt(),
      amount: json['amount'] as String,
      occurredAt: DateTime.parse(json['occurred_at'] as String),
      notes: json['notes'] as String?,
      createdByAdminId: (json['created_by_admin_id'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$LedgerEntryToJson(_LedgerEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'type': _$EntryTypeEnumMap[instance.type]!,
      'source_type': instance.sourceType,
      'source_id': instance.sourceId,
      'amount': instance.amount,
      'occurred_at': instance.occurredAt.toIso8601String(),
      'notes': instance.notes,
      'created_by_admin_id': instance.createdByAdminId,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

const _$EntryTypeEnumMap = {
  EntryType.credit: 'credit',
  EntryType.debit: 'debit',
};

_PaginationLink _$PaginationLinkFromJson(Map<String, dynamic> json) =>
    _PaginationLink(
      url: json['url'] as String?,
      label: json['label'] as String,
      page: (json['page'] as num?)?.toInt(),
      active: json['active'] as bool,
    );

Map<String, dynamic> _$PaginationLinkToJson(_PaginationLink instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'page': instance.page,
      'active': instance.active,
    };

_LedgerSummary _$LedgerSummaryFromJson(Map<String, dynamic> json) =>
    _LedgerSummary(
      totalCredits: (json['total_credits'] as num).toDouble(),
      totalDebits: (json['total_debits'] as num).toDouble(),
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$LedgerSummaryToJson(_LedgerSummary instance) =>
    <String, dynamic>{
      'total_credits': instance.totalCredits,
      'total_debits': instance.totalDebits,
      'balance': instance.balance,
    };
