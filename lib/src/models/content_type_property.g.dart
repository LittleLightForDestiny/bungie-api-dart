// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_type_property.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentTypeProperty _$ContentTypePropertyFromJson(Map<String, dynamic> json) {
  return ContentTypeProperty()
    ..name = json['name'] as String?
    ..rootPropertyName = json['rootPropertyName'] as String?
    ..readableName = json['readableName'] as String?
    ..value = json['value'] as String?
    ..propertyDescription = json['propertyDescription'] as String?
    ..localizable = json['localizable'] as bool?
    ..fallback = json['fallback'] as bool?
    ..enabled = json['enabled'] as bool?
    ..order = json['order'] as int?
    ..visible = json['visible'] as bool?
    ..isTitle = json['isTitle'] as bool?
    ..required = json['required'] as bool?
    ..maxLength = json['maxLength'] as int?
    ..maxByteLength = json['maxByteLength'] as int?
    ..maxFileSize = json['maxFileSize'] as int?
    ..regexp = json['regexp'] as String?
    ..validateAs = json['validateAs'] as String?
    ..rssAttribute = json['rssAttribute'] as String?
    ..visibleDependency = json['visibleDependency'] as String?
    ..visibleOn = json['visibleOn'] as String?
    ..datatype = _$enumDecodeNullable(
        _$ContentPropertyDataTypeEnumEnumMap, json['datatype'],
        unknownValue: ContentPropertyDataTypeEnum.ProtectedInvalidEnumValue)
    ..attributes = (json['attributes'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    )
    ..childProperties = (json['childProperties'] as List<dynamic>?)
        ?.map((e) => ContentTypeProperty.fromJson(e as Map<String, dynamic>))
        .toList()
    ..contentTypeAllowed = json['contentTypeAllowed'] as String?
    ..bindToProperty = json['bindToProperty'] as String?
    ..boundRegex = json['boundRegex'] as String?
    ..representationSelection =
        (json['representationSelection'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    )
    ..defaultValues = (json['defaultValues'] as List<dynamic>?)
        ?.map(
            (e) => ContentTypeDefaultValue.fromJson(e as Map<String, dynamic>))
        .toList()
    ..isExternalAllowed = json['isExternalAllowed'] as bool?
    ..propertySection = json['propertySection'] as String?
    ..weight = json['weight'] as int?
    ..entitytype = json['entitytype'] as String?
    ..isCombo = json['isCombo'] as bool?
    ..suppressProperty = json['suppressProperty'] as bool?
    ..legalContentTypes = (json['legalContentTypes'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList()
    ..representationValidationString =
        json['representationValidationString'] as String?
    ..minWidth = json['minWidth'] as int?
    ..maxWidth = json['maxWidth'] as int?
    ..minHeight = json['minHeight'] as int?
    ..maxHeight = json['maxHeight'] as int?
    ..isVideo = json['isVideo'] as bool?
    ..isImage = json['isImage'] as bool?;
}

Map<String, dynamic> _$ContentTypePropertyToJson(
        ContentTypeProperty instance) =>
    <String, dynamic>{
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
      'datatype': _$ContentPropertyDataTypeEnumEnumMap[instance.datatype],
      'attributes': instance.attributes,
      'childProperties': instance.childProperties,
      'contentTypeAllowed': instance.contentTypeAllowed,
      'bindToProperty': instance.bindToProperty,
      'boundRegex': instance.boundRegex,
      'representationSelection': instance.representationSelection,
      'defaultValues': instance.defaultValues,
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

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$ContentPropertyDataTypeEnumEnumMap = {
  ContentPropertyDataTypeEnum.None: 0,
  ContentPropertyDataTypeEnum.Plaintext: 1,
  ContentPropertyDataTypeEnum.Html: 2,
  ContentPropertyDataTypeEnum.Dropdown: 3,
  ContentPropertyDataTypeEnum.List: 4,
  ContentPropertyDataTypeEnum.Json: 5,
  ContentPropertyDataTypeEnum.Content: 6,
  ContentPropertyDataTypeEnum.Representation: 7,
  ContentPropertyDataTypeEnum.Set: 8,
  ContentPropertyDataTypeEnum.File: 9,
  ContentPropertyDataTypeEnum.FolderSet: 10,
  ContentPropertyDataTypeEnum.Date: 11,
  ContentPropertyDataTypeEnum.MultilinePlaintext: 12,
  ContentPropertyDataTypeEnum.DestinyContent: 13,
  ContentPropertyDataTypeEnum.Color: 14,
  ContentPropertyDataTypeEnum.ProtectedInvalidEnumValue: 999999999,
};
