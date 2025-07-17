// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_family_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityFamilyDefinition _$DestinyActivityFamilyDefinitionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActivityFamilyDefinition()
      ..traits =
          (json['traits'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..disabledSkullCategoryHashes =
          (json['disabledSkullCategoryHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..disabledSkullSubcategoryHashes =
          (json['disabledSkullSubcategoryHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..fixedSkullSubcategoryHashes =
          (json['fixedSkullSubcategoryHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyActivityFamilyDefinitionToJson(
  DestinyActivityFamilyDefinition instance,
) => <String, dynamic>{
  'traits': instance.traits,
  'disabledSkullCategoryHashes': instance.disabledSkullCategoryHashes,
  'disabledSkullSubcategoryHashes': instance.disabledSkullSubcategoryHashes,
  'fixedSkullSubcategoryHashes': instance.fixedSkullSubcategoryHashes,
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
