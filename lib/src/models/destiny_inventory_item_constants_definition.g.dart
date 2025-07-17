// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_inventory_item_constants_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInventoryItemConstantsDefinition
_$DestinyInventoryItemConstantsDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyInventoryItemConstantsDefinition()
      ..gearTierOverlayImagePaths =
          (json['gearTierOverlayImagePaths'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyInventoryItemConstantsDefinitionToJson(
  DestinyInventoryItemConstantsDefinition instance,
) => <String, dynamic>{
  'gearTierOverlayImagePaths': instance.gearTierOverlayImagePaths,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
