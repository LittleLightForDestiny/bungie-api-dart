// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_socket_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSocketEntryDefinition _$DestinyItemSocketEntryDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemSocketEntryDefinition()
    ..socketTypeHash = json['socketTypeHash'] as int?
    ..singleInitialItemHash = json['singleInitialItemHash'] as int?
    ..reusablePlugItems = (json['reusablePlugItems'] as List<dynamic>?)
        ?.map((e) => DestinyItemSocketEntryPlugItemDefinition.fromJson(
            e as Map<String, dynamic>))
        .toList()
    ..preventInitializationOnVendorPurchase =
        json['preventInitializationOnVendorPurchase'] as bool?
    ..hidePerksInItemTooltip = json['hidePerksInItemTooltip'] as bool?
    ..plugSources = json['plugSources'] == null
        ? null
        : SocketPlugSources.fromJson(json['plugSources'] as int)
    ..reusablePlugSetHash = json['reusablePlugSetHash'] as int?
    ..randomizedPlugSetHash = json['randomizedPlugSetHash'] as int?
    ..defaultVisible = json['defaultVisible'] as bool?;
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
      'randomizedPlugSetHash': instance.randomizedPlugSetHash,
      'defaultVisible': instance.defaultVisible,
    };
