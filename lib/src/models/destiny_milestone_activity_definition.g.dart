// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_activity_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneActivityDefinition _$DestinyMilestoneActivityDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyMilestoneActivityDefinition()
    ..conceptualActivityHash = json['conceptualActivityHash'] as int
    ..variants = (json['variants'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyMilestoneActivityVariantDefinition.fromJson(
                  e as Map<String, dynamic>)),
    );
}

Map<String, dynamic> _$DestinyMilestoneActivityDefinitionToJson(
        DestinyMilestoneActivityDefinition instance) =>
    <String, dynamic>{
      'conceptualActivityHash': instance.conceptualActivityHash,
      'variants': instance.variants,
    };
