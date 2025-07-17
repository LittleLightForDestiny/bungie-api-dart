// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_character_customization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCharacterCustomization _$DestinyCharacterCustomizationFromJson(
        Map<String, dynamic> json) =>
    DestinyCharacterCustomization()
      ..personality = (json['personality'] as num?)?.toInt()
      ..face = (json['face'] as num?)?.toInt()
      ..skinColor = (json['skinColor'] as num?)?.toInt()
      ..lipColor = (json['lipColor'] as num?)?.toInt()
      ..eyeColor = (json['eyeColor'] as num?)?.toInt()
      ..hairColors = (json['hairColors'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList()
      ..featureColors = (json['featureColors'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList()
      ..decalColor = (json['decalColor'] as num?)?.toInt()
      ..wearHelmet = json['wearHelmet'] as bool?
      ..hairIndex = (json['hairIndex'] as num?)?.toInt()
      ..featureIndex = (json['featureIndex'] as num?)?.toInt()
      ..decalIndex = (json['decalIndex'] as num?)?.toInt();

Map<String, dynamic> _$DestinyCharacterCustomizationToJson(
        DestinyCharacterCustomization instance) =>
    <String, dynamic>{
      'personality': instance.personality,
      'face': instance.face,
      'skinColor': instance.skinColor,
      'lipColor': instance.lipColor,
      'eyeColor': instance.eyeColor,
      'hairColors': instance.hairColors,
      'featureColors': instance.featureColors,
      'decalColor': instance.decalColor,
      'wearHelmet': instance.wearHelmet,
      'hairIndex': instance.hairIndex,
      'featureIndex': instance.featureIndex,
      'decalIndex': instance.decalIndex,
    };
