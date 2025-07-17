// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interpolation_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InterpolationPoint _$InterpolationPointFromJson(Map<String, dynamic> json) =>
    InterpolationPoint()
      ..value = (json['value'] as num?)?.toInt()
      ..weight = (json['weight'] as num?)?.toInt();

Map<String, dynamic> _$InterpolationPointToJson(InterpolationPoint instance) =>
    <String, dynamic>{'value': instance.value, 'weight': instance.weight};
