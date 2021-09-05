// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_trait_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyTraitDefinition _$DestinyTraitDefinitionFromJson(
    Map<String, dynamic> json) {
  return DestinyTraitDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..traitCategoryId = json['traitCategoryId'] as String?
    ..traitCategoryHash = json['traitCategoryHash'] as int?
    ..hash = json['hash'] as int?
    ..index = json['index'] as int?
    ..redacted = json['redacted'] as bool?;
}

Map<String, dynamic> _$DestinyTraitDefinitionToJson(
        DestinyTraitDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'traitCategoryId': instance.traitCategoryId,
      'traitCategoryHash': instance.traitCategoryHash,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
