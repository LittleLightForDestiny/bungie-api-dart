// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_season_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySeasonDefinition _$DestinySeasonDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinySeasonDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..backgroundImagePath = json['backgroundImagePath'] as String
    ..seasonNumber = json['seasonNumber'] as int
    ..startDate = json['startDate'] as String
    ..endDate = json['endDate'] as String
    ..seasonPassHash = json['seasonPassHash'] as int
    ..seasonPassProgressionHash = json['seasonPassProgressionHash'] as int
    ..artifactItemHash = json['artifactItemHash'] as int
    ..sealPresentationNodeHash = json['sealPresentationNodeHash'] as int
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinySeasonDefinitionToJson(
        DestinySeasonDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'backgroundImagePath': instance.backgroundImagePath,
      'seasonNumber': instance.seasonNumber,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'seasonPassHash': instance.seasonPassHash,
      'seasonPassProgressionHash': instance.seasonPassProgressionHash,
      'artifactItemHash': instance.artifactItemHash,
      'sealPresentationNodeHash': instance.sealPresentationNodeHash,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
