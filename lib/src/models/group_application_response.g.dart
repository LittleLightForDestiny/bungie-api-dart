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
        unknownValue: GroupApplicationResolveState.Unresolved);
}

Map<String, dynamic> _$GroupApplicationResponseToJson(
        GroupApplicationResponse instance) =>
    <String, dynamic>{
      'resolution': _$GroupApplicationResolveStateEnumMap[instance.resolution],
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$GroupApplicationResolveStateEnumMap = {
  GroupApplicationResolveState.Unresolved: 0,
  GroupApplicationResolveState.Accepted: 1,
  GroupApplicationResolveState.Denied: 2,
  GroupApplicationResolveState.Rescinded: 3,
};
