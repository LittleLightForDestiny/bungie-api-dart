// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_name_search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupNameSearchRequest _$GroupNameSearchRequestFromJson(
    Map<String, dynamic> json) {
  return GroupNameSearchRequest()
    ..groupName = json['groupName'] as String?
    ..groupType = _$enumDecodeNullable(_$GroupTypeEnumMap, json['groupType'],
        unknownValue: GroupType.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$GroupNameSearchRequestToJson(
        GroupNameSearchRequest instance) =>
    <String, dynamic>{
      'groupName': instance.groupName,
      'groupType': _$GroupTypeEnumMap[instance.groupType],
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

const _$GroupTypeEnumMap = {
  GroupType.General: 0,
  GroupType.Clan: 1,
  GroupType.ProtectedInvalidEnumValue: 999999999,
};
