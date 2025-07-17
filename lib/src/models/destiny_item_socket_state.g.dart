// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_item_socket_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyItemSocketState _$DestinyItemSocketStateFromJson(
        Map<String, dynamic> json) =>
    DestinyItemSocketState()
      ..plugHash = (json['plugHash'] as num?)?.toInt()
      ..isEnabled = json['isEnabled'] as bool?
      ..isVisible = json['isVisible'] as bool?
      ..enableFailIndexes = (json['enableFailIndexes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList();

Map<String, dynamic> _$DestinyItemSocketStateToJson(
        DestinyItemSocketState instance) =>
    <String, dynamic>{
      'plugHash': instance.plugHash,
      'isEnabled': instance.isEnabled,
      'isVisible': instance.isVisible,
      'enableFailIndexes': instance.enableFailIndexes,
    };
