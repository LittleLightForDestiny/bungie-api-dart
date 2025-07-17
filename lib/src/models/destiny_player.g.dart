// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPlayer _$DestinyPlayerFromJson(Map<String, dynamic> json) =>
    DestinyPlayer()
      ..destinyUserInfo = json['destinyUserInfo'] == null
          ? null
          : UserInfoCard.fromJson(
              json['destinyUserInfo'] as Map<String, dynamic>)
      ..characterClass = json['characterClass'] as String?
      ..classHash = (json['classHash'] as num?)?.toInt()
      ..raceHash = (json['raceHash'] as num?)?.toInt()
      ..genderHash = (json['genderHash'] as num?)?.toInt()
      ..characterLevel = (json['characterLevel'] as num?)?.toInt()
      ..lightLevel = (json['lightLevel'] as num?)?.toInt()
      ..bungieNetUserInfo = json['bungieNetUserInfo'] == null
          ? null
          : UserInfoCard.fromJson(
              json['bungieNetUserInfo'] as Map<String, dynamic>)
      ..clanName = json['clanName'] as String?
      ..clanTag = json['clanTag'] as String?
      ..emblemHash = (json['emblemHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyPlayerToJson(DestinyPlayer instance) =>
    <String, dynamic>{
      'destinyUserInfo': instance.destinyUserInfo?.toJson(),
      'characterClass': instance.characterClass,
      'classHash': instance.classHash,
      'raceHash': instance.raceHash,
      'genderHash': instance.genderHash,
      'characterLevel': instance.characterLevel,
      'lightLevel': instance.lightLevel,
      'bungieNetUserInfo': instance.bungieNetUserInfo?.toJson(),
      'clanName': instance.clanName,
      'clanTag': instance.clanTag,
      'emblemHash': instance.emblemHash,
    };
