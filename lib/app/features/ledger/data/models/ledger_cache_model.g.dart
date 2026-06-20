// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger_cache_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LedgerCacheModel _$LedgerCacheModelFromJson(Map<String, dynamic> json) =>
    LedgerCacheModel(
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => LedgerEntryCacheModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      summary: json['summary'] == null
          ? null
          : LedgerSummaryCacheModel.fromJson(
              json['summary'] as Map<String, dynamic>),
      pagination: json['pagination'] == null
          ? null
          : LedgerPaginationCacheModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
      message: json['message'] as String?,
      errors: json['errors'],
      cachedAt: DateTime.parse(json['cachedAt'] as String),
    );

Map<String, dynamic> _$LedgerCacheModelToJson(LedgerCacheModel instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'summary': instance.summary?.toJson(),
      'pagination': instance.pagination?.toJson(),
      'message': instance.message,
      'errors': instance.errors,
      'cachedAt': instance.cachedAt.toIso8601String(),
    };

LedgerEntryCacheModel _$LedgerEntryCacheModelFromJson(
        Map<String, dynamic> json) =>
    LedgerEntryCacheModel(
      id: (json['id'] as num?)?.toInt(),
      storeId: (json['storeId'] as num?)?.toInt(),
      type: json['type'] as String?,
      sourceType: json['sourceType'] as String?,
      sourceId: (json['sourceId'] as num?)?.toInt(),
      amount: json['amount'] as String?,
      occurredAt: json['occurredAt'] == null
          ? null
          : DateTime.parse(json['occurredAt'] as String),
      notes: json['notes'] as String?,
      createdByAdminId: (json['createdByAdminId'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$LedgerEntryCacheModelToJson(
        LedgerEntryCacheModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'type': instance.type,
      'sourceType': instance.sourceType,
      'sourceId': instance.sourceId,
      'amount': instance.amount,
      'occurredAt': instance.occurredAt?.toIso8601String(),
      'notes': instance.notes,
      'createdByAdminId': instance.createdByAdminId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

LedgerSummaryCacheModel _$LedgerSummaryCacheModelFromJson(
        Map<String, dynamic> json) =>
    LedgerSummaryCacheModel(
      totalCredits: (json['totalCredits'] as num?)?.toDouble(),
      totalDebits: (json['totalDebits'] as num?)?.toDouble(),
      balance: (json['balance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LedgerSummaryCacheModelToJson(
        LedgerSummaryCacheModel instance) =>
    <String, dynamic>{
      'totalCredits': instance.totalCredits,
      'totalDebits': instance.totalDebits,
      'balance': instance.balance,
    };

LedgerPaginationCacheModel _$LedgerPaginationCacheModelFromJson(
        Map<String, dynamic> json) =>
    LedgerPaginationCacheModel(
      currentPage: (json['currentPage'] as num?)?.toInt(),
      lastPage: (json['lastPage'] as num?)?.toInt(),
      perPage: (json['perPage'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      from: (json['from'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
      path: json['path'] as String?,
      firstPageUrl: json['firstPageUrl'] as String?,
      lastPageUrl: json['lastPageUrl'] as String?,
      nextPageUrl: json['nextPageUrl'] as String?,
      prevPageUrl: json['prevPageUrl'] as String?,
    );

Map<String, dynamic> _$LedgerPaginationCacheModelToJson(
        LedgerPaginationCacheModel instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'lastPage': instance.lastPage,
      'perPage': instance.perPage,
      'total': instance.total,
      'from': instance.from,
      'to': instance.to,
      'path': instance.path,
      'firstPageUrl': instance.firstPageUrl,
      'lastPageUrl': instance.lastPageUrl,
      'nextPageUrl': instance.nextPageUrl,
      'prevPageUrl': instance.prevPageUrl,
    };
