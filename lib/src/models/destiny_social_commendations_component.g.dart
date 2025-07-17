// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_social_commendations_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySocialCommendationsComponent
_$DestinySocialCommendationsComponentFromJson(Map<String, dynamic> json) =>
    DestinySocialCommendationsComponent()
      ..totalScore = (json['totalScore'] as num?)?.toInt()
      ..commendationNodePercentagesByHash =
          (json['commendationNodePercentagesByHash'] as Map<String, dynamic>?)
              ?.map((k, e) => MapEntry(k, (e as num).toInt()))
      ..scoreDetailValues =
          (json['scoreDetailValues'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..commendationNodeScoresByHash = (json['commendationNodeScoresByHash']
              as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, (e as num).toInt()))
      ..commendationScoresByHash = (json['commendationScoresByHash']
              as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, (e as num).toInt()));

Map<String, dynamic> _$DestinySocialCommendationsComponentToJson(
  DestinySocialCommendationsComponent instance,
) => <String, dynamic>{
  'totalScore': instance.totalScore,
  'commendationNodePercentagesByHash':
      instance.commendationNodePercentagesByHash,
  'scoreDetailValues': instance.scoreDetailValues,
  'commendationNodeScoresByHash': instance.commendationNodeScoresByHash,
  'commendationScoresByHash': instance.commendationScoresByHash,
};
