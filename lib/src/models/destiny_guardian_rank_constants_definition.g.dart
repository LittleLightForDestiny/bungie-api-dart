// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_guardian_rank_constants_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyGuardianRankConstantsDefinition
    _$DestinyGuardianRankConstantsDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyGuardianRankConstantsDefinition()
          ..displayProperties = json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                  json['displayProperties'] as Map<String, dynamic>)
          ..rankCount = json['rankCount'] as int?
          ..rootNodeHash = json['rootNodeHash'] as int?
          ..iconBackgrounds = json['iconBackgrounds'] == null
              ? null
              : DestinyGuardianRankIconBackgroundsDefinition.fromJson(
                  json['iconBackgrounds'] as Map<String, dynamic>)
          ..hash = json['hash'] as int?
          ..index = json['index'] as int?
          ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyGuardianRankConstantsDefinitionToJson(
        DestinyGuardianRankConstantsDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'rankCount': instance.rankCount,
      'rootNodeHash': instance.rootNodeHash,
      'iconBackgrounds': instance.iconBackgrounds?.toJson(),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
