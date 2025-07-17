// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_socket_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSocketEntryDefinition _$DestinyItemSocketEntryDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyItemSocketEntryDefinition()
      ..socketTypeHash = (json['socketTypeHash'] as num?)?.toInt()
      ..singleInitialItemHash = (json['singleInitialItemHash'] as num?)?.toInt()
      ..reusablePlugItems = (json['reusablePlugItems'] as List<dynamic>?)
          ?.map((e) => DestinyItemSocketEntryPlugItemDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..preventInitializationOnVendorPurchase =
          json['preventInitializationOnVendorPurchase'] as bool?
      ..hidePerksInItemTooltip = json['hidePerksInItemTooltip'] as bool?
      ..plugSources = json['plugSources'] == null
          ? null
          : SocketPlugSources.fromJson((json['plugSources'] as num).toInt())
      ..reusablePlugSetHash = (json['reusablePlugSetHash'] as num?)?.toInt()
      ..randomizedPlugSetHash = (json['randomizedPlugSetHash'] as num?)?.toInt()
      ..defaultVisible = json['defaultVisible'] as bool?;

Map<String, dynamic> _$DestinyItemSocketEntryDefinitionToJson(
        DestinyItemSocketEntryDefinition instance) =>
    <String, dynamic>{
      'socketTypeHash': instance.socketTypeHash,
      'singleInitialItemHash': instance.singleInitialItemHash,
      'reusablePlugItems':
          instance.reusablePlugItems?.map((e) => e.toJson()).toList(),
      'preventInitializationOnVendorPurchase':
          instance.preventInitializationOnVendorPurchase,
      'hidePerksInItemTooltip': instance.hidePerksInItemTooltip,
      'plugSources': instance.plugSources?.toJson(),
      'reusablePlugSetHash': instance.reusablePlugSetHash,
      'randomizedPlugSetHash': instance.randomizedPlugSetHash,
      'defaultVisible': instance.defaultVisible,
    };
