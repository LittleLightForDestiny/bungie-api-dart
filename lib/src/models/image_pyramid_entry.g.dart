// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_pyramid_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImagePyramidEntry _$ImagePyramidEntryFromJson(Map<String, dynamic> json) =>
    ImagePyramidEntry()
      ..name = json['name'] as String?
      ..factor = (json['factor'] as num?)?.toDouble();

Map<String, dynamic> _$ImagePyramidEntryToJson(ImagePyramidEntry instance) =>
    <String, dynamic>{'name': instance.name, 'factor': instance.factor};
