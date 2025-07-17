// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_environment_location_mapping.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEnvironmentLocationMapping _$DestinyEnvironmentLocationMappingFromJson(
  Map<String, dynamic> json,
) =>
    DestinyEnvironmentLocationMapping()
      ..locationHash = (json['locationHash'] as num?)?.toInt()
      ..activationSource = json['activationSource'] as String?
      ..itemHash = (json['itemHash'] as num?)?.toInt()
      ..objectiveHash = (json['objectiveHash'] as num?)?.toInt()
      ..activityHash = (json['activityHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyEnvironmentLocationMappingToJson(
  DestinyEnvironmentLocationMapping instance,
) => <String, dynamic>{
  'locationHash': instance.locationHash,
  'activationSource': instance.activationSource,
  'itemHash': instance.itemHash,
  'objectiveHash': instance.objectiveHash,
  'activityHash': instance.activityHash,
};
