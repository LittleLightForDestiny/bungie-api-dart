// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_skull_category_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivitySkullCategoryDefinition
_$DestinyActivitySkullCategoryDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyActivitySkullCategoryDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyActivitySkullCategoryDefinitionToJson(
  DestinyActivitySkullCategoryDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
