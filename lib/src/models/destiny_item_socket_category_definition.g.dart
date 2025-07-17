// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_socket_category_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSocketCategoryDefinition
_$DestinyItemSocketCategoryDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyItemSocketCategoryDefinition()
      ..socketCategoryHash = (json['socketCategoryHash'] as num?)?.toInt()
      ..socketIndexes =
          (json['socketIndexes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList();

Map<String, dynamic> _$DestinyItemSocketCategoryDefinitionToJson(
  DestinyItemSocketCategoryDefinition instance,
) => <String, dynamic>{
  'socketCategoryHash': instance.socketCategoryHash,
  'socketIndexes': instance.socketIndexes,
};
