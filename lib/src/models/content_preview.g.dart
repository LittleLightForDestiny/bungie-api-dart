// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentPreview _$ContentPreviewFromJson(Map<String, dynamic> json) =>
    ContentPreview()
      ..name = json['name'] as String?
      ..path = json['path'] as String?
      ..itemInSet = json['itemInSet'] as bool?
      ..setTag = json['setTag'] as String?
      ..setNesting = (json['setNesting'] as num?)?.toInt()
      ..useSetId = (json['useSetId'] as num?)?.toInt();

Map<String, dynamic> _$ContentPreviewToJson(ContentPreview instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
      'itemInSet': instance.itemInSet,
      'setTag': instance.setTag,
      'setNesting': instance.setNesting,
      'useSetId': instance.useSetId,
    };
