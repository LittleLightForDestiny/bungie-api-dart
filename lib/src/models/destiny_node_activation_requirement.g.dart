// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_node_activation_requirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyNodeActivationRequirement _$DestinyNodeActivationRequirementFromJson(
        Map<String, dynamic> json) =>
    DestinyNodeActivationRequirement()
      ..gridLevel = (json['gridLevel'] as num?)?.toInt()
      ..materialRequirementHashes =
          (json['materialRequirementHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList();

Map<String, dynamic> _$DestinyNodeActivationRequirementToJson(
        DestinyNodeActivationRequirement instance) =>
    <String, dynamic>{
      'gridLevel': instance.gridLevel,
      'materialRequirementHashes': instance.materialRequirementHashes,
    };
