// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_character_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCharacterComponent _$DestinyCharacterComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyCharacterComponent()
      ..membershipId = json['membershipId'] as String?
      ..membershipType = decodeBungieMembershipType(json['membershipType'])
      ..characterId = json['characterId'] as String?
      ..dateLastPlayed = json['dateLastPlayed'] as String?
      ..minutesPlayedThisSession = json['minutesPlayedThisSession'] as String?
      ..minutesPlayedTotal = json['minutesPlayedTotal'] as String?
      ..light = (json['light'] as num?)?.toInt()
      ..stats = (json['stats'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      )
      ..raceHash = (json['raceHash'] as num?)?.toInt()
      ..genderHash = (json['genderHash'] as num?)?.toInt()
      ..classHash = (json['classHash'] as num?)?.toInt()
      ..raceType = decodeDestinyRace(json['raceType'])
      ..classType = decodeDestinyClass(json['classType'])
      ..genderType = decodeDestinyGender(json['genderType'])
      ..emblemPath = json['emblemPath'] as String?
      ..emblemBackgroundPath = json['emblemBackgroundPath'] as String?
      ..emblemHash = (json['emblemHash'] as num?)?.toInt()
      ..emblemColor = json['emblemColor'] == null
          ? null
          : DestinyColor.fromJson(json['emblemColor'] as Map<String, dynamic>)
      ..levelProgression = json['levelProgression'] == null
          ? null
          : DestinyProgression.fromJson(
              json['levelProgression'] as Map<String, dynamic>)
      ..baseCharacterLevel = (json['baseCharacterLevel'] as num?)?.toInt()
      ..percentToNextLevel = (json['percentToNextLevel'] as num?)?.toDouble()
      ..titleRecordHash = (json['titleRecordHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyCharacterComponentToJson(
        DestinyCharacterComponent instance) =>
    <String, dynamic>{
      'membershipId': instance.membershipId,
      'membershipType': encodeBungieMembershipType(instance.membershipType),
      'characterId': instance.characterId,
      'dateLastPlayed': instance.dateLastPlayed,
      'minutesPlayedThisSession': instance.minutesPlayedThisSession,
      'minutesPlayedTotal': instance.minutesPlayedTotal,
      'light': instance.light,
      'stats': instance.stats,
      'raceHash': instance.raceHash,
      'genderHash': instance.genderHash,
      'classHash': instance.classHash,
      'raceType': encodeDestinyRace(instance.raceType),
      'classType': encodeDestinyClass(instance.classType),
      'genderType': encodeDestinyGender(instance.genderType),
      'emblemPath': instance.emblemPath,
      'emblemBackgroundPath': instance.emblemBackgroundPath,
      'emblemHash': instance.emblemHash,
      'emblemColor': instance.emblemColor?.toJson(),
      'levelProgression': instance.levelProgression?.toJson(),
      'baseCharacterLevel': instance.baseCharacterLevel,
      'percentToNextLevel': instance.percentToNextLevel,
      'titleRecordHash': instance.titleRecordHash,
    };
