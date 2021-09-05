// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_component_response_of_destiny_kiosks_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SingleComponentResponseOfDestinyKiosksComponent
    _$SingleComponentResponseOfDestinyKiosksComponentFromJson(
        Map<String, dynamic> json) {
  return SingleComponentResponseOfDestinyKiosksComponent()
    ..data = json['data'] == null
        ? null
        : DestinyKiosksComponent.fromJson(json['data'] as Map<String, dynamic>)
    ..privacy = _$enumDecodeNullable(
        _$ComponentPrivacySettingEnumMap, json['privacy'],
        unknownValue: ComponentPrivacySetting.ProtectedInvalidEnumValue)
    ..disabled = json['disabled'] as bool?;
}

Map<String, dynamic> _$SingleComponentResponseOfDestinyKiosksComponentToJson(
        SingleComponentResponseOfDestinyKiosksComponent instance) =>
    <String, dynamic>{
      'data': instance.data,
      'privacy': _$ComponentPrivacySettingEnumMap[instance.privacy],
      'disabled': instance.disabled,
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

const _$ComponentPrivacySettingEnumMap = {
  ComponentPrivacySetting.None: 0,
  ComponentPrivacySetting.Public: 1,
  ComponentPrivacySetting.Private: 2,
  ComponentPrivacySetting.ProtectedInvalidEnumValue: 999999999,
};
