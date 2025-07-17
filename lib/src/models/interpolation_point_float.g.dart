// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interpolation_point_float.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InterpolationPointFloat _$InterpolationPointFloatFromJson(
  Map<String, dynamic> json,
) =>
    InterpolationPointFloat()
      ..value = (json['value'] as num?)?.toDouble()
      ..weight = (json['weight'] as num?)?.toDouble();

Map<String, dynamic> _$InterpolationPointFloatToJson(
  InterpolationPointFloat instance,
) => <String, dynamic>{'value': instance.value, 'weight': instance.weight};
