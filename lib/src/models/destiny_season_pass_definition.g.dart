// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_season_pass_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySeasonPassDefinition _$DestinySeasonPassDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinySeasonPassDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..rewardProgressionHash = json['rewardProgressionHash'] as int?
      ..prestigeProgressionHash = json['prestigeProgressionHash'] as int?
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinySeasonPassDefinitionToJson(
        DestinySeasonPassDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties?.toJson(),
      'rewardProgressionHash': instance.rewardProgressionHash,
      'prestigeProgressionHash': instance.prestigeProgressionHash,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
