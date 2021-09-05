// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awa_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwaUserResponse _$AwaUserResponseFromJson(Map<String, dynamic> json) {
  return AwaUserResponse()
    ..selection = _$enumDecodeNullable(
        _$AwaUserSelectionEnumMap, json['selection'],
        unknownValue: AwaUserSelection.ProtectedInvalidEnumValue)
    ..correlationId = json['correlationId'] as String?
    ..nonce = (json['nonce'] as List<dynamic>?)?.map((e) => e as int).toList();
}

Map<String, dynamic> _$AwaUserResponseToJson(AwaUserResponse instance) =>
    <String, dynamic>{
      'selection': _$AwaUserSelectionEnumMap[instance.selection],
      'correlationId': instance.correlationId,
      'nonce': instance.nonce,
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

const _$AwaUserSelectionEnumMap = {
  AwaUserSelection.None: 0,
  AwaUserSelection.Rejected: 1,
  AwaUserSelection.Approved: 2,
  AwaUserSelection.ProtectedInvalidEnumValue: 999999999,
};
