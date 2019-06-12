// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_socket_category_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSocketCategoryDefinition
    _$DestinyItemSocketCategoryDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyItemSocketCategoryDefinition()
    ..socketCategoryHash = json['socketCategoryHash'] as int
    ..socketIndexes =
        (json['socketIndexes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic> _$DestinyItemSocketCategoryDefinitionToJson(
        DestinyItemSocketCategoryDefinition instance) =>
    <String, dynamic>{
      'socketCategoryHash': instance.socketCategoryHash,
      'socketIndexes': instance.socketIndexes
    };
