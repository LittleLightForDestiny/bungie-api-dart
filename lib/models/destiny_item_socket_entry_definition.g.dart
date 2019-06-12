// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_socket_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSocketEntryDefinition _$DestinyItemSocketEntryDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemSocketEntryDefinition()
    ..socketTypeHash = json['socketTypeHash'] as int
    ..singleInitialItemHash = json['singleInitialItemHash'] as int
    ..reusablePlugItems = (json['reusablePlugItems'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemSocketEntryPlugItemDefinition.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..preventInitializationOnVendorPurchase =
        json['preventInitializationOnVendorPurchase'] as bool
    ..hidePerksInItemTooltip = json['hidePerksInItemTooltip'] as bool
    ..plugSources = json['plugSources'] as int
    ..reusablePlugSetHash = json['reusablePlugSetHash'] as int
    ..randomizedPlugItems = (json['randomizedPlugItems'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemSocketEntryPlugItemRandomizedDefinition.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..defaultVisible = json['defaultVisible'] as bool;
}

Map<String, dynamic> _$DestinyItemSocketEntryDefinitionToJson(
        DestinyItemSocketEntryDefinition instance) =>
    <String, dynamic>{
      'socketTypeHash': instance.socketTypeHash,
      'singleInitialItemHash': instance.singleInitialItemHash,
      'reusablePlugItems': instance.reusablePlugItems,
      'preventInitializationOnVendorPurchase':
          instance.preventInitializationOnVendorPurchase,
      'hidePerksInItemTooltip': instance.hidePerksInItemTooltip,
      'plugSources': instance.plugSources,
      'reusablePlugSetHash': instance.reusablePlugSetHash,
      'randomizedPlugItems': instance.randomizedPlugItems,
      'defaultVisible': instance.defaultVisible
    };
