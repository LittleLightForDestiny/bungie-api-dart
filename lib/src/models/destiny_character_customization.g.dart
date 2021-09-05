// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_character_customization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCharacterCustomization _$DestinyCharacterCustomizationFromJson(
    Map<String, dynamic> json) {
  return DestinyCharacterCustomization()
    ..personality = json['personality'] as int?
    ..face = json['face'] as int?
    ..skinColor = json['skinColor'] as int?
    ..lipColor = json['lipColor'] as int?
    ..eyeColor = json['eyeColor'] as int?
    ..hairColors =
        (json['hairColors'] as List<dynamic>?)?.map((e) => e as int).toList()
    ..featureColors =
        (json['featureColors'] as List<dynamic>?)?.map((e) => e as int).toList()
    ..decalColor = json['decalColor'] as int?
    ..wearHelmet = json['wearHelmet'] as bool?
    ..hairIndex = json['hairIndex'] as int?
    ..featureIndex = json['featureIndex'] as int?
    ..decalIndex = json['decalIndex'] as int?;
}

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
