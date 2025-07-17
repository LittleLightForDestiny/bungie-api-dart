// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_filter_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemFilterDefinition _$DestinyItemFilterDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyItemFilterDefinition()
      ..setItems =
          (json['setItems'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyItemFilterDefinitionToJson(
  DestinyItemFilterDefinition instance,
) => <String, dynamic>{
  'setItems': instance.setItems,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
