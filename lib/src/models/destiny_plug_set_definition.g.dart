// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_plug_set_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPlugSetDefinition _$DestinyPlugSetDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyPlugSetDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..reusablePlugItems = (json['reusablePlugItems'] as List<dynamic>?)
        ?.map((e) =>
            DestinyItemSocketEntryPlugItemRandomizedDefinition.fromJson(
                e as Map<String, dynamic>))
        .toList()
    ..isFakePlugSet = json['isFakePlugSet'] as bool?
    ..hash = json['hash'] as int?
    ..index = json['index'] as int?
    ..redacted = json['redacted'] as bool?;
}

Map<String, dynamic> _$DestinyPlugSetDefinitionToJson(
        DestinyPlugSetDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'reusablePlugItems': instance.reusablePlugItems,
      'isFakePlugSet': instance.isFakePlugSet,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
