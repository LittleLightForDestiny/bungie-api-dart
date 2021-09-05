// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_application_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupApplicationResponse _$GroupApplicationResponseFromJson(
    Map<String, dynamic> json) {
  return GroupApplicationResponse()
    ..resolution = _$enumDecodeNullable(
        _$GroupApplicationResolveStateEnumMap, json['resolution'],
        unknownValue: GroupApplicationResolveState.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$GroupApplicationResponseToJson(
        GroupApplicationResponse instance) =>
    <String, dynamic>{
      'resolution': _$GroupApplicationResolveStateEnumMap[instance.resolution],
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

const _$GroupApplicationResolveStateEnumMap = {
  GroupApplicationResolveState.Unresolved: 0,
  GroupApplicationResolveState.Accepted: 1,
  GroupApplicationResolveState.Denied: 2,
  GroupApplicationResolveState.Rescinded: 3,
  GroupApplicationResolveState.ProtectedInvalidEnumValue: 999999999,
};
