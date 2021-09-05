// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_ban_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupBanRequest _$GroupBanRequestFromJson(Map<String, dynamic> json) {
  return GroupBanRequest()
    ..comment = json['comment'] as String?
    ..length = _$enumDecodeNullable(_$IgnoreLengthEnumMap, json['length'],
        unknownValue: IgnoreLength.ProtectedInvalidEnumValue);
}

Map<String, dynamic> _$GroupBanRequestToJson(GroupBanRequest instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'length': _$IgnoreLengthEnumMap[instance.length],
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

const _$IgnoreLengthEnumMap = {
  IgnoreLength.None: 0,
  IgnoreLength.Week: 1,
  IgnoreLength.TwoWeeks: 2,
  IgnoreLength.ThreeWeeks: 3,
  IgnoreLength.Month: 4,
  IgnoreLength.ThreeMonths: 5,
  IgnoreLength.SixMonths: 6,
  IgnoreLength.Year: 7,
  IgnoreLength.Forever: 8,
  IgnoreLength.ThreeMinutes: 9,
  IgnoreLength.Hour: 10,
  IgnoreLength.ThirtyDays: 11,
  IgnoreLength.ProtectedInvalidEnumValue: 999999999,
};
