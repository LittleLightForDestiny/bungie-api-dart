// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_intrinsic_socket_entry_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemIntrinsicSocketEntryDefinition
    _$DestinyItemIntrinsicSocketEntryDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyItemIntrinsicSocketEntryDefinition()
          ..plugItemHash = (json['plugItemHash'] as num?)?.toInt()
          ..socketTypeHash = (json['socketTypeHash'] as num?)?.toInt()
          ..defaultVisible = json['defaultVisible'] as bool?;

Map<String, dynamic> _$DestinyItemIntrinsicSocketEntryDefinitionToJson(
        DestinyItemIntrinsicSocketEntryDefinition instance) =>
    <String, dynamic>{
      'plugItemHash': instance.plugItemHash,
      'socketTypeHash': instance.socketTypeHash,
      'defaultVisible': instance.defaultVisible,
    };
