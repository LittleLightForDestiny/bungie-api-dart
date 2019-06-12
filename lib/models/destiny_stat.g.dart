// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyStat _$DestinyStatFromJson(Map<String, dynamic> json) {
  return DestinyStat()
    ..statHash = json['statHash'] as int
    ..value = json['value'] as int
    ..maximumValue = json['maximumValue'] as int;
}

Map<String, dynamic> _$DestinyStatToJson(DestinyStat instance) =>
    <String, dynamic>{
      'statHash': instance.statHash,
      'value': instance.value,
      'maximumValue': instance.maximumValue
    };
