// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_medal_tier_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMedalTierDefinition _$DestinyMedalTierDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyMedalTierDefinition()
      ..tierName = json['tierName'] as String?
      ..order = json['order'] as int?
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyMedalTierDefinitionToJson(
        DestinyMedalTierDefinition instance) =>
    <String, dynamic>{
      'tierName': instance.tierName,
      'order': instance.order,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
