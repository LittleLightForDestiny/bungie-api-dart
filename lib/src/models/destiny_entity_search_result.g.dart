// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_entity_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEntitySearchResult _$DestinyEntitySearchResultFromJson(
  Map<String, dynamic> json,
) =>
    DestinyEntitySearchResult()
      ..suggestedWords =
          (json['suggestedWords'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList()
      ..results =
          json['results'] == null
              ? null
              : SearchResultOfDestinyEntitySearchResultItem.fromJson(
                json['results'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyEntitySearchResultToJson(
  DestinyEntitySearchResult instance,
) => <String, dynamic>{
  'suggestedWords': instance.suggestedWords,
  'results': instance.results?.toJson(),
};
