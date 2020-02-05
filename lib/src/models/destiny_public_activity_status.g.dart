// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_public_activity_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPublicActivityStatus _$DestinyPublicActivityStatusFromJson(
    Map<String, dynamic> json) {
  return DestinyPublicActivityStatus()
    ..challengeObjectiveHashes = (json['challengeObjectiveHashes'] as List)
        ?.map((e) => e as int)
        ?.toList()
    ..modifierHashes =
        (json['modifierHashes'] as List)?.map((e) => e as int)?.toList()
    ..rewardTooltipItems = (json['rewardTooltipItems'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyItemQuantity.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$DestinyPublicActivityStatusToJson(
        DestinyPublicActivityStatus instance) =>
    <String, dynamic>{
      'challengeObjectiveHashes': instance.challengeObjectiveHashes,
      'modifierHashes': instance.modifierHashes,
      'rewardTooltipItems': instance.rewardTooltipItems,
    };
