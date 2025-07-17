// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_material_requirement_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMaterialRequirementState _$DestinyMaterialRequirementStateFromJson(
  Map<String, dynamic> json,
) =>
    DestinyMaterialRequirementState()
      ..itemHash = (json['itemHash'] as num?)?.toInt()
      ..count = (json['count'] as num?)?.toInt()
      ..stackSize = (json['stackSize'] as num?)?.toInt();

Map<String, dynamic> _$DestinyMaterialRequirementStateToJson(
  DestinyMaterialRequirementState instance,
) => <String, dynamic>{
  'itemHash': instance.itemHash,
  'count': instance.count,
  'stackSize': instance.stackSize,
};
