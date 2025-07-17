// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_derived_item_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyDerivedItemDefinition _$DestinyDerivedItemDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyDerivedItemDefinition()
      ..itemHash = (json['itemHash'] as num?)?.toInt()
      ..itemName = json['itemName'] as String?
      ..itemDetail = json['itemDetail'] as String?
      ..itemDescription = json['itemDescription'] as String?
      ..iconPath = json['iconPath'] as String?
      ..vendorItemIndex = (json['vendorItemIndex'] as num?)?.toInt();

Map<String, dynamic> _$DestinyDerivedItemDefinitionToJson(
  DestinyDerivedItemDefinition instance,
) => <String, dynamic>{
  'itemHash': instance.itemHash,
  'itemName': instance.itemName,
  'itemDetail': instance.itemDetail,
  'itemDescription': instance.itemDescription,
  'iconPath': instance.iconPath,
  'vendorItemIndex': instance.vendorItemIndex,
};
