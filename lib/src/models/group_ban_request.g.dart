// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_ban_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupBanRequest _$GroupBanRequestFromJson(Map<String, dynamic> json) {
  return GroupBanRequest()
    ..comment = json['comment'] as String
    ..length = _$enumDecodeNullable(_$IgnoreLengthEnumMap, json['length'],
        unknownValue: IgnoreLength.None);
}

Map<String, dynamic> _$GroupBanRequestToJson(GroupBanRequest instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'length': _$IgnoreLengthEnumMap[instance.length],
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
};
