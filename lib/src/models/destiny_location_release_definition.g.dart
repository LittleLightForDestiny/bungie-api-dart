// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_location_release_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLocationReleaseDefinition _$DestinyLocationReleaseDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyLocationReleaseDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..smallTransparentIcon = json['smallTransparentIcon'] as String?
      ..mapIcon = json['mapIcon'] as String?
      ..largeTransparentIcon = json['largeTransparentIcon'] as String?
      ..spawnPoint = (json['spawnPoint'] as num?)?.toInt()
      ..destinationHash = (json['destinationHash'] as num?)?.toInt()
      ..activityHash = (json['activityHash'] as num?)?.toInt()
      ..activityGraphHash = (json['activityGraphHash'] as num?)?.toInt()
      ..activityGraphNodeHash = (json['activityGraphNodeHash'] as num?)?.toInt()
      ..activityBubbleName = (json['activityBubbleName'] as num?)?.toInt()
      ..activityPathBundle = (json['activityPathBundle'] as num?)?.toInt()
      ..activityPathDestination =
          (json['activityPathDestination'] as num?)?.toInt()
      ..navPointType = decodeDestinyActivityNavPointType(json['navPointType'])
      ..worldPosition =
          (json['worldPosition'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList();

Map<String, dynamic> _$DestinyLocationReleaseDefinitionToJson(
  DestinyLocationReleaseDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'smallTransparentIcon': instance.smallTransparentIcon,
  'mapIcon': instance.mapIcon,
  'largeTransparentIcon': instance.largeTransparentIcon,
  'spawnPoint': instance.spawnPoint,
  'destinationHash': instance.destinationHash,
  'activityHash': instance.activityHash,
  'activityGraphHash': instance.activityGraphHash,
  'activityGraphNodeHash': instance.activityGraphNodeHash,
  'activityBubbleName': instance.activityBubbleName,
  'activityPathBundle': instance.activityPathBundle,
  'activityPathDestination': instance.activityPathDestination,
  'navPointType': encodeDestinyActivityNavPointType(instance.navPointType),
  'worldPosition': instance.worldPosition,
};
