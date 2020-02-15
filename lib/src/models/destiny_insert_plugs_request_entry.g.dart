// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_insert_plugs_request_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyInsertPlugsRequestEntry _$DestinyInsertPlugsRequestEntryFromJson(
    Map<String, dynamic> json) {
  return DestinyInsertPlugsRequestEntry()
    ..socketIndex = json['socketIndex'] as int
    ..socketArrayType = _$enumDecodeNullable(
        _$DestinySocketArrayTypeEnumMap, json['socketArrayType'],
        unknownValue: DestinySocketArrayType.ProtectedInvalidEnumValue)
    ..plugItemHash = json['plugItemHash'] as int;
}

Map<String, dynamic> _$DestinyInsertPlugsRequestEntryToJson(
        DestinyInsertPlugsRequestEntry instance) =>
    <String, dynamic>{
      'socketIndex': instance.socketIndex,
      'socketArrayType':
          _$DestinySocketArrayTypeEnumMap[instance.socketArrayType],
      'plugItemHash': instance.plugItemHash,
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

const _$DestinySocketArrayTypeEnumMap = {
  DestinySocketArrayType.Default: 0,
  DestinySocketArrayType.Intrinsic: 1,
  DestinySocketArrayType.ProtectedInvalidEnumValue: 999999999,
};
