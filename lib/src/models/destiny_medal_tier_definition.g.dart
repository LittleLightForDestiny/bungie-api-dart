// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_medal_tier_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMedalTierDefinition _$DestinyMedalTierDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyMedalTierDefinition()
      ..tierName = json['tierName'] as String?
      ..order = (json['order'] as num?)?.toInt()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyMedalTierDefinitionToJson(
  DestinyMedalTierDefinition instance,
) => <String, dynamic>{
  'tierName': instance.tierName,
  'order': instance.order,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
