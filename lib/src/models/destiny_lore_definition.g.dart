// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_lore_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyLoreDefinition _$DestinyLoreDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyLoreDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..subtitle = json['subtitle'] as String?
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyLoreDefinitionToJson(
  DestinyLoreDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'subtitle': instance.subtitle,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
