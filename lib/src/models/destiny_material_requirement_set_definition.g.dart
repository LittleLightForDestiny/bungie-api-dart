// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_material_requirement_set_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMaterialRequirementSetDefinition
    _$DestinyMaterialRequirementSetDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyMaterialRequirementSetDefinition()
          ..materials = (json['materials'] as List<dynamic>?)
              ?.map((e) => DestinyMaterialRequirement.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..hash = (json['hash'] as num?)?.toInt()
          ..index = (json['index'] as num?)?.toInt()
          ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyMaterialRequirementSetDefinitionToJson(
        DestinyMaterialRequirementSetDefinition instance) =>
    <String, dynamic>{
      'materials': instance.materials?.map((e) => e.toJson()).toList(),
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
