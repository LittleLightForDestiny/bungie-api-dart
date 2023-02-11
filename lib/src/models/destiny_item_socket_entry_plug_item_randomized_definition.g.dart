// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_socket_entry_plug_item_randomized_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSocketEntryPlugItemRandomizedDefinition
    _$DestinyItemSocketEntryPlugItemRandomizedDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyItemSocketEntryPlugItemRandomizedDefinition()
          ..craftingRequirements = json['craftingRequirements'] == null
              ? null
              : DestinyPlugItemCraftingRequirements.fromJson(
                  json['craftingRequirements'] as Map<String, dynamic>)
          ..currentlyCanRoll = json['currentlyCanRoll'] as bool?
          ..plugItemHash = json['plugItemHash'] as int?;

Map<String, dynamic> _$DestinyItemSocketEntryPlugItemRandomizedDefinitionToJson(
        DestinyItemSocketEntryPlugItemRandomizedDefinition instance) =>
    <String, dynamic>{
      'craftingRequirements': instance.craftingRequirements?.toJson(),
      'currentlyCanRoll': instance.currentlyCanRoll,
      'plugItemHash': instance.plugItemHash,
    };
