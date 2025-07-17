// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_of_content_item_public_contract.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultOfContentItemPublicContract
    _$SearchResultOfContentItemPublicContractFromJson(
            Map<String, dynamic> json) =>
        SearchResultOfContentItemPublicContract()
          ..results = (json['results'] as List<dynamic>?)
              ?.map((e) =>
                  ContentItemPublicContract.fromJson(e as Map<String, dynamic>))
              .toList()
          ..totalResults = (json['totalResults'] as num?)?.toInt()
          ..hasMore = json['hasMore'] as bool?
          ..query = json['query'] == null
              ? null
              : PagedQuery.fromJson(json['query'] as Map<String, dynamic>)
          ..replacementContinuationToken =
              json['replacementContinuationToken'] as String?
          ..useTotalResults = json['useTotalResults'] as bool?;

Map<String, dynamic> _$SearchResultOfContentItemPublicContractToJson(
        SearchResultOfContentItemPublicContract instance) =>
    <String, dynamic>{
      'results': instance.results?.map((e) => e.toJson()).toList(),
      'totalResults': instance.totalResults,
      'hasMore': instance.hasMore,
      'query': instance.query?.toJson(),
      'replacementContinuationToken': instance.replacementContinuationToken,
      'useTotalResults': instance.useTotalResults,
    };
