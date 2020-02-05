// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPlayer _$DestinyPlayerFromJson(Map<String, dynamic> json) {
  return DestinyPlayer()
    ..destinyUserInfo = json['destinyUserInfo'] == null
        ? null
        : UserInfoCard.fromJson(json['destinyUserInfo'] as Map<String, dynamic>)
    ..characterClass = json['characterClass'] as String
    ..classHash = json['classHash'] as int
    ..raceHash = json['raceHash'] as int
    ..genderHash = json['genderHash'] as int
    ..characterLevel = json['characterLevel'] as int
    ..lightLevel = json['lightLevel'] as int
    ..bungieNetUserInfo = json['bungieNetUserInfo'] == null
        ? null
        : UserInfoCard.fromJson(
            json['bungieNetUserInfo'] as Map<String, dynamic>)
    ..clanName = json['clanName'] as String
    ..clanTag = json['clanTag'] as String
    ..emblemHash = json['emblemHash'] as int;
}

Map<String, dynamic> _$DestinyPlayerToJson(DestinyPlayer instance) =>
    <String, dynamic>{
      'destinyUserInfo': instance.destinyUserInfo,
      'characterClass': instance.characterClass,
      'classHash': instance.classHash,
      'raceHash': instance.raceHash,
      'genderHash': instance.genderHash,
      'characterLevel': instance.characterLevel,
      'lightLevel': instance.lightLevel,
      'bungieNetUserInfo': instance.bungieNetUserInfo,
      'clanName': instance.clanName,
      'clanTag': instance.clanTag,
      'emblemHash': instance.emblemHash,
    };
