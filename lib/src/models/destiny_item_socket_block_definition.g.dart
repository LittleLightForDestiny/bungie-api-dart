// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_socket_block_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSocketBlockDefinition _$DestinyItemSocketBlockDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyItemSocketBlockDefinition()
      ..detail = json['detail'] as String?
      ..socketEntries =
          (json['socketEntries'] as List<dynamic>?)
              ?.map(
                (e) => DestinyItemSocketEntryDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..intrinsicSockets =
          (json['intrinsicSockets'] as List<dynamic>?)
              ?.map(
                (e) => DestinyItemIntrinsicSocketEntryDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..socketCategories =
          (json['socketCategories'] as List<dynamic>?)
              ?.map(
                (e) => DestinyItemSocketCategoryDefinition.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$DestinyItemSocketBlockDefinitionToJson(
  DestinyItemSocketBlockDefinition instance,
) => <String, dynamic>{
  'detail': instance.detail,
  'socketEntries': instance.socketEntries?.map((e) => e.toJson()).toList(),
  'intrinsicSockets':
      instance.intrinsicSockets?.map((e) => e.toJson()).toList(),
  'socketCategories':
      instance.socketCategories?.map((e) => e.toJson()).toList(),
};
