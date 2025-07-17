// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_talent_node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyTalentNode _$DestinyTalentNodeFromJson(Map<String, dynamic> json) =>
    DestinyTalentNode()
      ..nodeIndex = (json['nodeIndex'] as num?)?.toInt()
      ..nodeHash = (json['nodeHash'] as num?)?.toInt()
      ..state = decodeDestinyTalentNodeState(json['state'])
      ..isActivated = json['isActivated'] as bool?
      ..stepIndex = (json['stepIndex'] as num?)?.toInt()
      ..materialsToUpgrade =
          (json['materialsToUpgrade'] as List<dynamic>?)
              ?.map(
                (e) => DestinyMaterialRequirement.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList()
      ..activationGridLevel = (json['activationGridLevel'] as num?)?.toInt()
      ..progressPercent = (json['progressPercent'] as num?)?.toDouble()
      ..hidden = json['hidden'] as bool?
      ..nodeStatsBlock =
          json['nodeStatsBlock'] == null
              ? null
              : DestinyTalentNodeStatBlock.fromJson(
                json['nodeStatsBlock'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyTalentNodeToJson(DestinyTalentNode instance) =>
    <String, dynamic>{
      'nodeIndex': instance.nodeIndex,
      'nodeHash': instance.nodeHash,
      'state': encodeDestinyTalentNodeState(instance.state),
      'isActivated': instance.isActivated,
      'stepIndex': instance.stepIndex,
      'materialsToUpgrade':
          instance.materialsToUpgrade?.map((e) => e.toJson()).toList(),
      'activationGridLevel': instance.activationGridLevel,
      'progressPercent': instance.progressPercent,
      'hidden': instance.hidden,
      'nodeStatsBlock': instance.nodeStatsBlock?.toJson(),
    };
