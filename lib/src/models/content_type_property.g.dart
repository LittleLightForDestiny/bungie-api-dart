// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_type_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentTypeProperty _$ContentTypePropertyFromJson(Map<String, dynamic> json) =>
    ContentTypeProperty()
      ..name = json['name'] as String?
      ..rootPropertyName = json['rootPropertyName'] as String?
      ..readableName = json['readableName'] as String?
      ..value = json['value'] as String?
      ..propertyDescription = json['propertyDescription'] as String?
      ..localizable = json['localizable'] as bool?
      ..fallback = json['fallback'] as bool?
      ..enabled = json['enabled'] as bool?
      ..order = (json['order'] as num?)?.toInt()
      ..visible = json['visible'] as bool?
      ..isTitle = json['isTitle'] as bool?
      ..required = json['required'] as bool?
      ..maxLength = (json['maxLength'] as num?)?.toInt()
      ..maxByteLength = (json['maxByteLength'] as num?)?.toInt()
      ..maxFileSize = (json['maxFileSize'] as num?)?.toInt()
      ..regexp = json['regexp'] as String?
      ..validateAs = json['validateAs'] as String?
      ..rssAttribute = json['rssAttribute'] as String?
      ..visibleDependency = json['visibleDependency'] as String?
      ..visibleOn = json['visibleOn'] as String?
      ..datatype = decodeContentPropertyDataTypeEnum(json['datatype'])
      ..attributes = (json['attributes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      )
      ..childProperties =
          (json['childProperties'] as List<dynamic>?)
              ?.map(
                (e) => ContentTypeProperty.fromJson(e as Map<String, dynamic>),
              )
              .toList()
      ..contentTypeAllowed = json['contentTypeAllowed'] as String?
      ..bindToProperty = json['bindToProperty'] as String?
      ..boundRegex = json['boundRegex'] as String?
      ..representationSelection = (json['representationSelection']
              as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, e as String))
      ..defaultValues =
          (json['defaultValues'] as List<dynamic>?)
              ?.map(
                (e) =>
                    ContentTypeDefaultValue.fromJson(e as Map<String, dynamic>),
              )
              .toList()
      ..isExternalAllowed = json['isExternalAllowed'] as bool?
      ..propertySection = json['propertySection'] as String?
      ..weight = (json['weight'] as num?)?.toInt()
      ..entitytype = json['entitytype'] as String?
      ..isCombo = json['isCombo'] as bool?
      ..suppressProperty = json['suppressProperty'] as bool?
      ..legalContentTypes =
          (json['legalContentTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList()
      ..representationValidationString =
          json['representationValidationString'] as String?
      ..minWidth = (json['minWidth'] as num?)?.toInt()
      ..maxWidth = (json['maxWidth'] as num?)?.toInt()
      ..minHeight = (json['minHeight'] as num?)?.toInt()
      ..maxHeight = (json['maxHeight'] as num?)?.toInt()
      ..isVideo = json['isVideo'] as bool?
      ..isImage = json['isImage'] as bool?;

Map<String, dynamic> _$ContentTypePropertyToJson(
  ContentTypeProperty instance,
) => <String, dynamic>{
  'name': instance.name,
  'rootPropertyName': instance.rootPropertyName,
  'readableName': instance.readableName,
  'value': instance.value,
  'propertyDescription': instance.propertyDescription,
  'localizable': instance.localizable,
  'fallback': instance.fallback,
  'enabled': instance.enabled,
  'order': instance.order,
  'visible': instance.visible,
  'isTitle': instance.isTitle,
  'required': instance.required,
  'maxLength': instance.maxLength,
  'maxByteLength': instance.maxByteLength,
  'maxFileSize': instance.maxFileSize,
  'regexp': instance.regexp,
  'validateAs': instance.validateAs,
  'rssAttribute': instance.rssAttribute,
  'visibleDependency': instance.visibleDependency,
  'visibleOn': instance.visibleOn,
  'datatype': encodeContentPropertyDataTypeEnum(instance.datatype),
  'attributes': instance.attributes,
  'childProperties': instance.childProperties?.map((e) => e.toJson()).toList(),
  'contentTypeAllowed': instance.contentTypeAllowed,
  'bindToProperty': instance.bindToProperty,
  'boundRegex': instance.boundRegex,
  'representationSelection': instance.representationSelection,
  'defaultValues': instance.defaultValues?.map((e) => e.toJson()).toList(),
  'isExternalAllowed': instance.isExternalAllowed,
  'propertySection': instance.propertySection,
  'weight': instance.weight,
  'entitytype': instance.entitytype,
  'isCombo': instance.isCombo,
  'suppressProperty': instance.suppressProperty,
  'legalContentTypes': instance.legalContentTypes,
  'representationValidationString': instance.representationValidationString,
  'minWidth': instance.minWidth,
  'maxWidth': instance.maxWidth,
  'minHeight': instance.minHeight,
  'maxHeight': instance.maxHeight,
  'isVideo': instance.isVideo,
  'isImage': instance.isImage,
};
