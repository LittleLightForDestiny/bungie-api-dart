// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_transitory_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileTransitoryComponent _$DestinyProfileTransitoryComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyProfileTransitoryComponent()
    ..partyMembers = (json['partyMembers'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyProfileTransitoryPartyMember.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..currentActivity = json['currentActivity'] == null
        ? null
        : DestinyProfileTransitoryCurrentActivity.fromJson(
            json['currentActivity'] as Map<String, dynamic>)
    ..joinability = json['joinability'] == null
        ? null
        : DestinyProfileTransitoryJoinability.fromJson(
            json['joinability'] as Map<String, dynamic>)
    ..tracking = (json['tracking'] as List)
        ?.map((e) => e == null
            ? null
            : DestinyProfileTransitoryTrackingEntry.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..lastOrbitedDestinationHash = json['lastOrbitedDestinationHash'] as int;
}

Map<String, dynamic> _$DestinyProfileTransitoryComponentToJson(
        DestinyProfileTransitoryComponent instance) =>
    <String, dynamic>{
      'partyMembers': instance.partyMembers,
      'currentActivity': instance.currentActivity,
      'joinability': instance.joinability,
      'tracking': instance.tracking,
      'lastOrbitedDestinationHash': instance.lastOrbitedDestinationHash,
    };
