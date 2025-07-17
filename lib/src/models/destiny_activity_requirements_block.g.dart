// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_requirements_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivityRequirementsBlock _$DestinyActivityRequirementsBlockFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActivityRequirementsBlock()
      ..leaderRequirementLabels =
          (json['leaderRequirementLabels'] as List<dynamic>?)
              ?.map(
                (e) => DestinyActivityRequirementLabel.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..fireteamRequirementLabels =
          (json['fireteamRequirementLabels'] as List<dynamic>?)
              ?.map(
                (e) => DestinyActivityRequirementLabel.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList();

Map<String, dynamic> _$DestinyActivityRequirementsBlockToJson(
  DestinyActivityRequirementsBlock instance,
) => <String, dynamic>{
  'leaderRequirementLabels':
      instance.leaderRequirementLabels?.map((e) => e.toJson()).toList(),
  'fireteamRequirementLabels':
      instance.fireteamRequirementLabels?.map((e) => e.toJson()).toList(),
};
