// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_selectable_skull_collection_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivitySelectableSkullCollectionDefinition
_$DestinyActivitySelectableSkullCollectionDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActivitySelectableSkullCollectionDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..skullSubcategoryHashes =
          (json['skullSubcategoryHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..selectionType =
          json['selectionType'] == null
              ? null
              : DestinyActivitySelectableSkullCollectionSelectionType.fromJson(
                json['selectionType'] as Map<String, dynamic>,
              )
      ..selectableActivitySkulls =
          (json['selectableActivitySkulls'] as List<dynamic>?)
              ?.map(
                (e) => DestinyActivitySelectableSkull.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyActivitySelectableSkullCollectionDefinitionToJson(
  DestinyActivitySelectableSkullCollectionDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'skullSubcategoryHashes': instance.skullSubcategoryHashes,
  'selectionType': instance.selectionType?.toJson(),
  'selectableActivitySkulls':
      instance.selectableActivitySkulls?.map((e) => e.toJson()).toList(),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
