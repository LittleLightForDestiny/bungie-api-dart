// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_stat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyStat _$DestinyStatFromJson(Map<String, dynamic> json) => DestinyStat()
  ..statHash = (json['statHash'] as num?)?.toInt()
  ..value = (json['value'] as num?)?.toInt();

Map<String, dynamic> _$DestinyStatToJson(DestinyStat instance) =>
    <String, dynamic>{
      'statHash': instance.statHash,
      'value': instance.value,
    };
