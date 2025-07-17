// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_set_perk_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSetPerkDefinition _$DestinyItemSetPerkDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyItemSetPerkDefinition()
      ..requiredSetCount = (json['requiredSetCount'] as num?)?.toInt()
      ..sandboxPerkHash = (json['sandboxPerkHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyItemSetPerkDefinitionToJson(
  DestinyItemSetPerkDefinition instance,
) => <String, dynamic>{
  'requiredSetCount': instance.requiredSetCount,
  'sandboxPerkHash': instance.sandboxPerkHash,
};
