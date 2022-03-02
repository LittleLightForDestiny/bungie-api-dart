// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_material_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMaterialRequirement _$DestinyMaterialRequirementFromJson(
        Map<String, dynamic> json) =>
    DestinyMaterialRequirement()
      ..itemHash = json['itemHash'] as int?
      ..deleteOnAction = json['deleteOnAction'] as bool?
      ..count = json['count'] as int?
      ..countIsConstant = json['countIsConstant'] as bool?
      ..omitFromRequirements = json['omitFromRequirements'] as bool?;

Map<String, dynamic> _$DestinyMaterialRequirementToJson(
        DestinyMaterialRequirement instance) =>
    <String, dynamic>{
      'itemHash': instance.itemHash,
      'deleteOnAction': instance.deleteOnAction,
      'count': instance.count,
      'countIsConstant': instance.countIsConstant,
      'omitFromRequirements': instance.omitFromRequirements,
    };
