// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_activity_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneActivityDefinition _$DestinyMilestoneActivityDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyMilestoneActivityDefinition()
      ..conceptualActivityHash =
          (json['conceptualActivityHash'] as num?)?.toInt()
      ..variants = (json['variants'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DestinyMilestoneActivityVariantDefinition.fromJson(
            e as Map<String, dynamic>,
          ),
        ),
      );

Map<String, dynamic> _$DestinyMilestoneActivityDefinitionToJson(
  DestinyMilestoneActivityDefinition instance,
) => <String, dynamic>{
  'conceptualActivityHash': instance.conceptualActivityHash,
  'variants': instance.variants?.map((k, e) => MapEntry(k, e.toJson())),
};
