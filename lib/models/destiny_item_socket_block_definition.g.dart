// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_socket_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSocketBlockDefinition _$DestinyItemSocketBlockDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyItemSocketBlockDefinition()
    ..detail = json['detail'] as String
    ..socketEntries = (json['socketEntries'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemSocketEntryDefinition.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..intrinsicSockets = (json['intrinsicSockets'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemIntrinsicSocketEntryDefinition.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..socketCategories = (json['socketCategories'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemSocketCategoryDefinition.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyItemSocketBlockDefinitionToJson(
        DestinyItemSocketBlockDefinition instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'socketEntries': instance.socketEntries,
      'intrinsicSockets': instance.intrinsicSockets,
      'socketCategories': instance.socketCategories
    };
