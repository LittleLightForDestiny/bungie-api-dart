// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedQuery _$PagedQueryFromJson(Map<String, dynamic> json) => PagedQuery()
  ..itemsPerPage = json['itemsPerPage'] as int?
  ..currentPage = json['currentPage'] as int?
  ..requestContinuationToken = json['requestContinuationToken'] as String?;

Map<String, dynamic> _$PagedQueryToJson(PagedQuery instance) =>
    <String, dynamic>{
      'itemsPerPage': instance.itemsPerPage,
      'currentPage': instance.currentPage,
      'requestContinuationToken': instance.requestContinuationToken,
    };
