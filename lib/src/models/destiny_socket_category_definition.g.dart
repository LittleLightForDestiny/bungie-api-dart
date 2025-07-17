// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_socket_category_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySocketCategoryDefinition _$DestinySocketCategoryDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinySocketCategoryDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..uiCategoryStyle = (json['uiCategoryStyle'] as num?)?.toInt()
      ..categoryStyle = decodeDestinySocketCategoryStyle(json['categoryStyle'])
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinySocketCategoryDefinitionToJson(
  DestinySocketCategoryDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'uiCategoryStyle': instance.uiCategoryStyle,
  'categoryStyle': encodeDestinySocketCategoryStyle(instance.categoryStyle),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
