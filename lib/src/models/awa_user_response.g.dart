// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awa_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwaUserResponse _$AwaUserResponseFromJson(Map<String, dynamic> json) {
  return AwaUserResponse()
    ..selection = _$enumDecodeNullable(
        _$AwaUserSelectionEnumMap, json['selection'],
        unknownValue: AwaUserSelection.None)
    ..correlationId = json['correlationId'] as String
    ..nonce = (json['nonce'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic> _$AwaUserResponseToJson(AwaUserResponse instance) =>
    <String, dynamic>{
      'selection': _$AwaUserSelectionEnumMap[instance.selection],
      'correlationId': instance.correlationId,
      'nonce': instance.nonce,
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

const _$AwaUserSelectionEnumMap = {
  AwaUserSelection.None: 0,
  AwaUserSelection.Rejected: 1,
  AwaUserSelection.Approved: 2,
};
