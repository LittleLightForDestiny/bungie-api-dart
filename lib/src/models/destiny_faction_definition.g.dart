// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_faction_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyFactionDefinition _$DestinyFactionDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyFactionDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..progressionHash = json['progressionHash'] as int?
      ..tokenValues = (json['tokenValues'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      )
      ..rewardItemHash = json['rewardItemHash'] as int?
      ..rewardVendorHash = json['rewardVendorHash'] as int?
      ..vendors = (json['vendors'] as List<dynamic>?)
          ?.map((e) => DestinyFactionVendorDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyFactionDefinitionToJson(
        DestinyFactionDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'progressionHash': instance.progressionHash,
      'tokenValues': instance.tokenValues,
      'rewardItemHash': instance.rewardItemHash,
      'rewardVendorHash': instance.rewardVendorHash,
      'vendors': instance.vendors,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
