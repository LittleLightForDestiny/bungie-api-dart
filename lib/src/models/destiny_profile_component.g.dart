// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileComponent _$DestinyProfileComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyProfileComponent()
      ..userInfo = json['userInfo'] == null
          ? null
          : UserInfoCard.fromJson(json['userInfo'] as Map<String, dynamic>)
      ..dateLastPlayed = json['dateLastPlayed'] as String?
      ..versionsOwned = json['versionsOwned'] == null
          ? null
          : DestinyGameVersions.fromJson(json['versionsOwned'] as int)
      ..characterIds = (json['characterIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
      ..seasonHashes = (json['seasonHashes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..eventCardHashesOwned = (json['eventCardHashesOwned'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..currentSeasonHash = json['currentSeasonHash'] as int?
      ..currentSeasonRewardPowerCap =
          json['currentSeasonRewardPowerCap'] as int?
      ..activeEventCardHash = json['activeEventCardHash'] as int?
      ..currentGuardianRank = json['currentGuardianRank'] as int?
      ..lifetimeHighestGuardianRank =
          json['lifetimeHighestGuardianRank'] as int?;

Map<String, dynamic> _$DestinyProfileComponentToJson(
        DestinyProfileComponent instance) =>
    <String, dynamic>{
      'userInfo': instance.userInfo?.toJson(),
      'dateLastPlayed': instance.dateLastPlayed,
      'versionsOwned': instance.versionsOwned?.toJson(),
      'characterIds': instance.characterIds,
      'seasonHashes': instance.seasonHashes,
      'eventCardHashesOwned': instance.eventCardHashesOwned,
      'currentSeasonHash': instance.currentSeasonHash,
      'currentSeasonRewardPowerCap': instance.currentSeasonRewardPowerCap,
      'activeEventCardHash': instance.activeEventCardHash,
      'currentGuardianRank': instance.currentGuardianRank,
      'lifetimeHighestGuardianRank': instance.lifetimeHighestGuardianRank,
    };
