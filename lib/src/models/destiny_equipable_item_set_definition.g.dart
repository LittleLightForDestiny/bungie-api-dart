// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_equipable_item_set_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEquipableItemSetDefinition _$DestinyEquipableItemSetDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyEquipableItemSetDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..setItems =
          (json['setItems'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..setPerks =
          (json['setPerks'] as List<dynamic>?)
              ?.map(
                (e) => DestinyItemSetPerkDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyEquipableItemSetDefinitionToJson(
  DestinyEquipableItemSetDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'setItems': instance.setItems,
  'setPerks': instance.setPerks?.map((e) => e.toJson()).toList(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
