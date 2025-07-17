// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_activity_skull_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyActivitySkullOption _$DestinyActivitySkullOptionFromJson(
  Map<String, dynamic> json,
) =>
    DestinyActivitySkullOption()
      ..optionHash = (json['optionHash'] as num?)?.toInt()
      ..stringValue = json['stringValue'] as String?
      ..boolValue = json['boolValue'] as bool?
      ..integerValue = (json['integerValue'] as num?)?.toInt()
      ..floatValue = (json['floatValue'] as num?)?.toDouble()
      ..minDisplayDifficultyId = decodeDestinyActivityDifficultyId(
        json['minDisplayDifficultyId'],
      );

Map<String, dynamic> _$DestinyActivitySkullOptionToJson(
  DestinyActivitySkullOption instance,
) => <String, dynamic>{
  'optionHash': instance.optionHash,
  'stringValue': instance.stringValue,
  'boolValue': instance.boolValue,
  'integerValue': instance.integerValue,
  'floatValue': instance.floatValue,
  'minDisplayDifficultyId': encodeDestinyActivityDifficultyId(
    instance.minDisplayDifficultyId,
  ),
};
