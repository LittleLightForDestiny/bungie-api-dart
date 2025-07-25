// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_social_commendation_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySocialCommendationDefinition
_$DestinySocialCommendationDefinitionFromJson(Map<String, dynamic> json) =>
    DestinySocialCommendationDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..cardImagePath = json['cardImagePath'] as String?
      ..color =
          json['color'] == null
              ? null
              : DestinyColor.fromJson(json['color'] as Map<String, dynamic>)
      ..displayPriority = (json['displayPriority'] as num?)?.toInt()
      ..activityGivingLimit = (json['activityGivingLimit'] as num?)?.toInt()
      ..parentCommendationNodeHash =
          (json['parentCommendationNodeHash'] as num?)?.toInt()
      ..displayActivities =
          (json['displayActivities'] as List<dynamic>?)
              ?.map(
                (e) => DestinyDisplayPropertiesDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinySocialCommendationDefinitionToJson(
  DestinySocialCommendationDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'cardImagePath': instance.cardImagePath,
  'color': instance.color?.toJson(),
  'displayPriority': instance.displayPriority,
  'activityGivingLimit': instance.activityGivingLimit,
  'parentCommendationNodeHash': instance.parentCommendationNodeHash,
  'displayActivities':
      instance.displayActivities?.map((e) => e.toJson()).toList(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
