// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Series _$SeriesFromJson(Map<String, dynamic> json) =>
    Series()
      ..datapoints =
          (json['datapoints'] as List<dynamic>?)
              ?.map((e) => Datapoint.fromJson(e as Map<String, dynamic>))
              .toList()
      ..target = json['target'] as String?;

Map<String, dynamic> _$SeriesToJson(Series instance) => <String, dynamic>{
  'datapoints': instance.datapoints?.map((e) => e.toJson()).toList(),
  'target': instance.target,
};
