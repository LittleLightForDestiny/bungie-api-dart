// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_perk_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemPerkEntryDefinition _$DestinyItemPerkEntryDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemPerkEntryDefinition()
    ..requirementDisplayString = json['requirementDisplayString'] as String
    ..perkHash = json['perkHash'] as int
    ..perkVisibility = json['perkVisibility'] as int;
}

Map<String, dynamic> _$DestinyItemPerkEntryDefinitionToJson(
        DestinyItemPerkEntryDefinition instance) =>
    <String, dynamic>{
      'requirementDisplayString': instance.requirementDisplayString,
      'perkHash': instance.perkHash,
      'perkVisibility': instance.perkVisibility
    };
