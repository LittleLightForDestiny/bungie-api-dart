// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_of_fireteam_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultOfFireteamResponse _$SearchResultOfFireteamResponseFromJson(
  Map<String, dynamic> json,
) =>
    SearchResultOfFireteamResponse()
      ..results =
          (json['results'] as List<dynamic>?)
              ?.map((e) => FireteamResponse.fromJson(e as Map<String, dynamic>))
              .toList()
      ..totalResults = (json['totalResults'] as num?)?.toInt()
      ..hasMore = json['hasMore'] as bool?
      ..query =
          json['query'] == null
              ? null
              : PagedQuery.fromJson(json['query'] as Map<String, dynamic>)
      ..replacementContinuationToken =
          json['replacementContinuationToken'] as String?
      ..useTotalResults = json['useTotalResults'] as bool?;

Map<String, dynamic> _$SearchResultOfFireteamResponseToJson(
  SearchResultOfFireteamResponse instance,
) => <String, dynamic>{
  'results': instance.results?.map((e) => e.toJson()).toList(),
  'totalResults': instance.totalResults,
  'hasMore': instance.hasMore,
  'query': instance.query?.toJson(),
  'replacementContinuationToken': instance.replacementContinuationToken,
  'useTotalResults': instance.useTotalResults,
};
