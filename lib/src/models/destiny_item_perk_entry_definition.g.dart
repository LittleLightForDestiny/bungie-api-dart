// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_perk_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPerkEntryDefinition _$DestinyItemPerkEntryDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyItemPerkEntryDefinition()
      ..requirementDisplayString = json['requirementDisplayString'] as String?
      ..perkHash = (json['perkHash'] as num?)?.toInt()
      ..perkVisibility = decodeItemPerkVisibility(json['perkVisibility']);

Map<String, dynamic> _$DestinyItemPerkEntryDefinitionToJson(
        DestinyItemPerkEntryDefinition instance) =>
    <String, dynamic>{
      'requirementDisplayString': instance.requirementDisplayString,
      'perkHash': instance.perkHash,
      'perkVisibility': encodeItemPerkVisibility(instance.perkVisibility),
    };
