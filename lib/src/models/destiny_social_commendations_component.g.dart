// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_social_commendations_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySocialCommendationsComponent
    _$DestinySocialCommendationsComponentFromJson(Map<String, dynamic> json) =>
        DestinySocialCommendationsComponent()
          ..totalScore = json['totalScore'] as int?
          ..scoreDetailValues = (json['scoreDetailValues'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList()
          ..commendationNodeScoresByHash =
              (json['commendationNodeScoresByHash'] as Map<String, dynamic>?)
                  ?.map(
            (k, e) => MapEntry(k, e as int),
          )
          ..commendationScoresByHash =
              (json['commendationScoresByHash'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as int),
          );

Map<String, dynamic> _$DestinySocialCommendationsComponentToJson(
        DestinySocialCommendationsComponent instance) =>
    <String, dynamic>{
      'totalScore': instance.totalScore,
      'scoreDetailValues': instance.scoreDetailValues,
      'commendationNodeScoresByHash': instance.commendationNodeScoresByHash,
      'commendationScoresByHash': instance.commendationScoresByHash,
    };
