// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_type_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentTypeDescription _$ContentTypeDescriptionFromJson(
        Map<String, dynamic> json) =>
    ContentTypeDescription()
      ..cType = json['cType'] as String?
      ..name = json['name'] as String?
      ..contentDescription = json['contentDescription'] as String?
      ..previewImage = json['previewImage'] as String?
      ..priority = (json['priority'] as num?)?.toInt()
      ..reminder = json['reminder'] as String?
      ..properties = (json['properties'] as List<dynamic>?)
          ?.map((e) => ContentTypeProperty.fromJson(e as Map<String, dynamic>))
          .toList()
      ..tagMetadata = (json['tagMetadata'] as List<dynamic>?)
          ?.map(
              (e) => TagMetadataDefinition.fromJson(e as Map<String, dynamic>))
          .toList()
      ..tagMetadataItems =
          (json['tagMetadataItems'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, TagMetadataItem.fromJson(e as Map<String, dynamic>)),
      )
      ..usageExamples = (json['usageExamples'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
      ..showInContentEditor = json['showInContentEditor'] as bool?
      ..typeOf = json['typeOf'] as String?
      ..bindIdentifierToProperty = json['bindIdentifierToProperty'] as String?
      ..boundRegex = json['boundRegex'] as String?
      ..forceIdentifierBinding = json['forceIdentifierBinding'] as bool?
      ..allowComments = json['allowComments'] as bool?
      ..autoEnglishPropertyFallback =
          json['autoEnglishPropertyFallback'] as bool?
      ..bulkUploadable = json['bulkUploadable'] as bool?
      ..previews = (json['previews'] as List<dynamic>?)
          ?.map((e) => ContentPreview.fromJson(e as Map<String, dynamic>))
          .toList()
      ..suppressCmsPath = json['suppressCmsPath'] as bool?
      ..propertySections = (json['propertySections'] as List<dynamic>?)
          ?.map((e) =>
              ContentTypePropertySection.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ContentTypeDescriptionToJson(
        ContentTypeDescription instance) =>
    <String, dynamic>{
      'cType': instance.cType,
      'name': instance.name,
      'contentDescription': instance.contentDescription,
      'previewImage': instance.previewImage,
      'priority': instance.priority,
      'reminder': instance.reminder,
      'properties': instance.properties?.map((e) => e.toJson()).toList(),
      'tagMetadata': instance.tagMetadata?.map((e) => e.toJson()).toList(),
      'tagMetadataItems':
          instance.tagMetadataItems?.map((k, e) => MapEntry(k, e.toJson())),
      'usageExamples': instance.usageExamples,
      'showInContentEditor': instance.showInContentEditor,
      'typeOf': instance.typeOf,
      'bindIdentifierToProperty': instance.bindIdentifierToProperty,
      'boundRegex': instance.boundRegex,
      'forceIdentifierBinding': instance.forceIdentifierBinding,
      'allowComments': instance.allowComments,
      'autoEnglishPropertyFallback': instance.autoEnglishPropertyFallback,
      'bulkUploadable': instance.bulkUploadable,
      'previews': instance.previews?.map((e) => e.toJson()).toList(),
      'suppressCmsPath': instance.suppressCmsPath,
      'propertySections':
          instance.propertySections?.map((e) => e.toJson()).toList(),
    };
