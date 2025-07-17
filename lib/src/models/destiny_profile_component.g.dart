// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileComponent _$DestinyProfileComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyProfileComponent()
      ..userInfo =
          json['userInfo'] == null
              ? null
              : UserInfoCard.fromJson(json['userInfo'] as Map<String, dynamic>)
      ..dateLastPlayed = json['dateLastPlayed'] as String?
      ..versionsOwned =
          json['versionsOwned'] == null
              ? null
              : DestinyGameVersions.fromJson(
                (json['versionsOwned'] as num).toInt(),
              )
      ..characterIds =
          (json['characterIds'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList()
      ..seasonHashes =
          (json['seasonHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..eventCardHashesOwned =
          (json['eventCardHashesOwned'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..currentSeasonHash = (json['currentSeasonHash'] as num?)?.toInt()
      ..currentSeasonRewardPowerCap =
          (json['currentSeasonRewardPowerCap'] as num?)?.toInt()
      ..activeEventCardHash = (json['activeEventCardHash'] as num?)?.toInt()
      ..currentGuardianRank = (json['currentGuardianRank'] as num?)?.toInt()
      ..lifetimeHighestGuardianRank =
          (json['lifetimeHighestGuardianRank'] as num?)?.toInt()
      ..renewedGuardianRank = (json['renewedGuardianRank'] as num?)?.toInt();

Map<String, dynamic> _$DestinyProfileComponentToJson(
  DestinyProfileComponent instance,
) => <String, dynamic>{
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
  'renewedGuardianRank': instance.renewedGuardianRank,
};
