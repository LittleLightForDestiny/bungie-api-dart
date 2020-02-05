// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_type_property_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentTypePropertySection _$ContentTypePropertySectionFromJson(
    Map<String, dynamic> json) {
  return ContentTypePropertySection()
    ..name = json['name'] as String
    ..readableName = json['readableName'] as String
    ..collapsed = json['collapsed'] as bool;
}

Map<String, dynamic> _$ContentTypePropertySectionToJson(
        ContentTypePropertySection instance) =>
    <String, dynamic>{
      'name': instance.name,
      'readableName': instance.readableName,
      'collapsed': instance.collapsed,
    };
