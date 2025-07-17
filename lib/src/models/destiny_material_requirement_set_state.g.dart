// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_material_requirement_set_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMaterialRequirementSetState _$DestinyMaterialRequirementSetStateFromJson(
  Map<String, dynamic> json,
) =>
    DestinyMaterialRequirementSetState()
      ..materialRequirementSetHash =
          (json['materialRequirementSetHash'] as num?)?.toInt()
      ..materialRequirementStates =
          (json['materialRequirementStates'] as List<dynamic>?)
              ?.map(
                (e) => DestinyMaterialRequirementState.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$DestinyMaterialRequirementSetStateToJson(
  DestinyMaterialRequirementSetState instance,
) => <String, dynamic>{
  'materialRequirementSetHash': instance.materialRequirementSetHash,
  'materialRequirementStates':
      instance.materialRequirementStates?.map((e) => e.toJson()).toList(),
};
