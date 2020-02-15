// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofuint32_and_public_destiny_vendor_sale_item_set_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent
    _$DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent()
    ..data = (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : PublicDestinyVendorSaleItemSetComponent.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..privacy = _$enumDecodeNullable(
        _$ComponentPrivacySettingEnumMap, json['privacy'],
        unknownValue: ComponentPrivacySetting.ProtectedInvalidEnumValue)
    ..disabled = json['disabled'] as bool;
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponentToJson(
            DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent
                instance) =>
        <String, dynamic>{
          'data': instance.data,
          'privacy': _$ComponentPrivacySettingEnumMap[instance.privacy],
          'disabled': instance.disabled,
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
  ComponentPrivacySetting.ProtectedInvalidEnumValue: 999999999,
};
