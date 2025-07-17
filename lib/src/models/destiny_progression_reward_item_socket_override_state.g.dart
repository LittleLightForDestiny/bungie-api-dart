// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_progression_reward_item_socket_override_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProgressionRewardItemSocketOverrideState
_$DestinyProgressionRewardItemSocketOverrideStateFromJson(
  Map<String, dynamic> json,
) =>
    DestinyProgressionRewardItemSocketOverrideState()
      ..rewardItemStats = (json['rewardItemStats'] as Map<String, dynamic>?)
          ?.map(
            (k, e) =>
                MapEntry(k, DestinyStat.fromJson(e as Map<String, dynamic>)),
          )
      ..itemState =
          json['itemState'] == null
              ? null
              : ItemState.fromJson((json['itemState'] as num).toInt());

Map<String, dynamic> _$DestinyProgressionRewardItemSocketOverrideStateToJson(
  DestinyProgressionRewardItemSocketOverrideState instance,
) => <String, dynamic>{
  'rewardItemStats': instance.rewardItemStats?.map(
    (k, e) => MapEntry(k, e.toJson()),
  ),
  'itemState': instance.itemState?.toJson(),
};
