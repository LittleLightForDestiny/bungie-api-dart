// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_transitory_joinability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileTransitoryJoinability
    _$DestinyProfileTransitoryJoinabilityFromJson(Map<String, dynamic> json) {
  return DestinyProfileTransitoryJoinability()
    ..openSlots = json['openSlots'] as int
    ..privacySetting = json['privacySetting'] as int
    ..closedReasons = json['closedReasons'] as int;
}

Map<String, dynamic> _$DestinyProfileTransitoryJoinabilityToJson(
        DestinyProfileTransitoryJoinability instance) =>
    <String, dynamic>{
      'openSlots': instance.openSlots,
      'privacySetting': instance.privacySetting,
      'closedReasons': instance.closedReasons
    };
