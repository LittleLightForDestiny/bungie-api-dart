// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_talent_grid_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemTalentGridBlockDefinition
    _$DestinyItemTalentGridBlockDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyItemTalentGridBlockDefinition()
    ..talentGridHash = json['talentGridHash'] as int
    ..itemDetailString = json['itemDetailString'] as String
    ..buildName = json['buildName'] as String
    ..hudDamageType = json['hudDamageType'] as int
    ..hudIcon = json['hudIcon'] as String;
}

Map<String, dynamic> _$DestinyItemTalentGridBlockDefinitionToJson(
        DestinyItemTalentGridBlockDefinition instance) =>
    <String, dynamic>{
      'talentGridHash': instance.talentGridHash,
      'itemDetailString': instance.itemDetailString,
      'buildName': instance.buildName,
      'hudDamageType': instance.hudDamageType,
      'hudIcon': instance.hudIcon
    };
