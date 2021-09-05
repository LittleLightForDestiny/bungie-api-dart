// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Application _$ApplicationFromJson(Map<String, dynamic> json) {
  return Application()
    ..applicationId = json['applicationId'] as int?
    ..name = json['name'] as String?
    ..redirectUrl = json['redirectUrl'] as String?
    ..link = json['link'] as String?
    ..scope = json['scope'] as String?
    ..origin = json['origin'] as String?
    ..status = _$enumDecodeNullable(_$ApplicationStatusEnumMap, json['status'],
        unknownValue: ApplicationStatus.ProtectedInvalidEnumValue)
    ..creationDate = json['creationDate'] as String?
    ..statusChanged = json['statusChanged'] as String?
    ..firstPublished = json['firstPublished'] as String?
    ..team = (json['team'] as List<dynamic>?)
        ?.map((e) => ApplicationDeveloper.fromJson(e as Map<String, dynamic>))
        .toList()
    ..overrideAuthorizeViewName = json['overrideAuthorizeViewName'] as String?;
}

Map<String, dynamic> _$ApplicationToJson(Application instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'name': instance.name,
      'redirectUrl': instance.redirectUrl,
      'link': instance.link,
      'scope': instance.scope,
      'origin': instance.origin,
      'status': _$ApplicationStatusEnumMap[instance.status],
      'creationDate': instance.creationDate,
      'statusChanged': instance.statusChanged,
      'firstPublished': instance.firstPublished,
      'team': instance.team,
      'overrideAuthorizeViewName': instance.overrideAuthorizeViewName,
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

const _$ApplicationStatusEnumMap = {
  ApplicationStatus.None: 0,
  ApplicationStatus.Private: 1,
  ApplicationStatus.Public: 2,
  ApplicationStatus.Disabled: 3,
  ApplicationStatus.Blocked: 4,
  ApplicationStatus.ProtectedInvalidEnumValue: 999999999,
};
