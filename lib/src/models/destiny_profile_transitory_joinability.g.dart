// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_transitory_joinability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileTransitoryJoinability
    _$DestinyProfileTransitoryJoinabilityFromJson(Map<String, dynamic> json) =>
        DestinyProfileTransitoryJoinability()
          ..openSlots = json['openSlots'] as int?
          ..privacySetting =
              decodeDestinyGamePrivacySetting(json['privacySetting'])
          ..closedReasons = json['closedReasons'] == null
              ? null
              : DestinyJoinClosedReasons.fromJson(json['closedReasons'] as int);

Map<String, dynamic> _$DestinyProfileTransitoryJoinabilityToJson(
        DestinyProfileTransitoryJoinability instance) =>
    <String, dynamic>{
      'openSlots': instance.openSlots,
      'privacySetting':
          encodeDestinyGamePrivacySetting(instance.privacySetting),
      'closedReasons': instance.closedReasons?.toJson(),
    };
