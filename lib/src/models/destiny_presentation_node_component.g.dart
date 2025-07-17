// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_presentation_node_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPresentationNodeComponent _$DestinyPresentationNodeComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyPresentationNodeComponent()
      ..state = json['state'] == null
          ? null
          : DestinyPresentationNodeState.fromJson(
              (json['state'] as num).toInt())
      ..objective = json['objective'] == null
          ? null
          : DestinyObjectiveProgress.fromJson(
              json['objective'] as Map<String, dynamic>)
      ..progressValue = (json['progressValue'] as num?)?.toInt()
      ..completionValue = (json['completionValue'] as num?)?.toInt()
      ..recordCategoryScore = (json['recordCategoryScore'] as num?)?.toInt();

Map<String, dynamic> _$DestinyPresentationNodeComponentToJson(
        DestinyPresentationNodeComponent instance) =>
    <String, dynamic>{
      'state': instance.state?.toJson(),
      'objective': instance.objective?.toJson(),
      'progressValue': instance.progressValue,
      'completionValue': instance.completionValue,
      'recordCategoryScore': instance.recordCategoryScore,
    };
