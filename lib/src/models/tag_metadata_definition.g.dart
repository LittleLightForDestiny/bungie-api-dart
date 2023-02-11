// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_metadata_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TagMetadataDefinition _$TagMetadataDefinitionFromJson(
        Map<String, dynamic> json) =>
    TagMetadataDefinition()
      ..description = json['description'] as String?
      ..order = json['order'] as int?
      ..items = (json['items'] as List<dynamic>?)
          ?.map((e) => TagMetadataItem.fromJson(e as Map<String, dynamic>))
          .toList()
      ..datatype = json['datatype'] as String?
      ..name = json['name'] as String?
      ..isRequired = json['isRequired'] as bool?;

Map<String, dynamic> _$TagMetadataDefinitionToJson(
        TagMetadataDefinition instance) =>
    <String, dynamic>{
      'description': instance.description,
      'order': instance.order,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'datatype': instance.datatype,
      'name': instance.name,
      'isRequired': instance.isRequired,
    };
