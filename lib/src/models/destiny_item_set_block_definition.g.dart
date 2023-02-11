// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_set_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSetBlockDefinition _$DestinyItemSetBlockDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyItemSetBlockDefinition()
      ..itemList = (json['itemList'] as List<dynamic>?)
          ?.map((e) => DestinyItemSetBlockEntryDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..requireOrderedSetItemAdd = json['requireOrderedSetItemAdd'] as bool?
      ..setIsFeatured = json['setIsFeatured'] as bool?
      ..setType = json['setType'] as String?
      ..questLineName = json['questLineName'] as String?
      ..questLineDescription = json['questLineDescription'] as String?
      ..questStepSummary = json['questStepSummary'] as String?;

Map<String, dynamic> _$DestinyItemSetBlockDefinitionToJson(
        DestinyItemSetBlockDefinition instance) =>
    <String, dynamic>{
      'itemList': instance.itemList?.map((e) => e.toJson()).toList(),
      'requireOrderedSetItemAdd': instance.requireOrderedSetItemAdd,
      'setIsFeatured': instance.setIsFeatured,
      'setType': instance.setType,
      'questLineName': instance.questLineName,
      'questLineDescription': instance.questLineDescription,
      'questStepSummary': instance.questStepSummary,
    };
