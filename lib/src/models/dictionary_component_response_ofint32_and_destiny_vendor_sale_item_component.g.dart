// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint32_and_destiny_vendor_sale_item_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent
    _$DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent()
    ..data = (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyVendorSaleItemComponent.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..privacy = _$enumDecodeNullable(
        _$ComponentPrivacySettingEnumMap, json['privacy'],
        unknownValue: ComponentPrivacySetting.None);
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponentToJson(
            DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent
                instance) =>
        <String, dynamic>{
          'data': instance.data,
          'privacy': _$ComponentPrivacySettingEnumMap[instance.privacy],
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

const _$ComponentPrivacySettingEnumMap = {
  ComponentPrivacySetting.None: 0,
  ComponentPrivacySetting.Public: 1,
  ComponentPrivacySetting.Private: 2,
};
