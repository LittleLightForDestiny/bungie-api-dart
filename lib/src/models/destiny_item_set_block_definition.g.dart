// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_set_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSetBlockDefinition _$DestinyItemSetBlockDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemSetBlockDefinition()
    ..itemList = (json['itemList'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemSetBlockEntryDefinition.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..requireOrderedSetItemAdd = json['requireOrderedSetItemAdd'] as bool
    ..setIsFeatured = json['setIsFeatured'] as bool
    ..setType = json['setType'] as String;
}

Map<String, dynamic> _$DestinyItemSetBlockDefinitionToJson(
        DestinyItemSetBlockDefinition instance) =>
    <String, dynamic>{
      'itemList': instance.itemList,
      'requireOrderedSetItemAdd': instance.requireOrderedSetItemAdd,
      'setIsFeatured': instance.setIsFeatured,
      'setType': instance.setType,
    };
