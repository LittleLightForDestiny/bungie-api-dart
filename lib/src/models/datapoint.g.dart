// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datapoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datapoint _$DatapointFromJson(Map<String, dynamic> json) =>
    Datapoint()
      ..time = json['time'] as String?
      ..count = (json['count'] as num?)?.toDouble();

Map<String, dynamic> _$DatapointToJson(Datapoint instance) => <String, dynamic>{
  'time': instance.time,
  'count': instance.count,
};
