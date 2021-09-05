// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_environment_location_mapping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEnvironmentLocationMapping _$DestinyEnvironmentLocationMappingFromJson(
    Map<String, dynamic> json) {
  return DestinyEnvironmentLocationMapping()
    ..locationHash = json['locationHash'] as int?
    ..activationSource = json['activationSource'] as String?
    ..itemHash = json['itemHash'] as int?
    ..objectiveHash = json['objectiveHash'] as int?
    ..activityHash = json['activityHash'] as int?;
}

Map<String, dynamic> _$DestinyEnvironmentLocationMappingToJson(
        DestinyEnvironmentLocationMapping instance) =>
    <String, dynamic>{
      'locationHash': instance.locationHash,
      'activationSource': instance.activationSource,
      'itemHash': instance.itemHash,
      'objectiveHash': instance.objectiveHash,
      'activityHash': instance.activityHash,
    };
