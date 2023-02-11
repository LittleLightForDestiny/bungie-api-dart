// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_location_release_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLocationReleaseDefinition _$DestinyLocationReleaseDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyLocationReleaseDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..smallTransparentIcon = json['smallTransparentIcon'] as String?
      ..mapIcon = json['mapIcon'] as String?
      ..largeTransparentIcon = json['largeTransparentIcon'] as String?
      ..spawnPoint = json['spawnPoint'] as int?
      ..destinationHash = json['destinationHash'] as int?
      ..activityHash = json['activityHash'] as int?
      ..activityGraphHash = json['activityGraphHash'] as int?
      ..activityGraphNodeHash = json['activityGraphNodeHash'] as int?
      ..activityBubbleName = json['activityBubbleName'] as int?
      ..activityPathBundle = json['activityPathBundle'] as int?
      ..activityPathDestination = json['activityPathDestination'] as int?
      ..navPointType = decodeDestinyActivityNavPointType(json['navPointType'])
      ..worldPosition = (json['worldPosition'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList();

Map<String, dynamic> _$DestinyLocationReleaseDefinitionToJson(
        DestinyLocationReleaseDefinition instance) =>
    <String, dynamic>{
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
