// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofuint32_and_personal_destiny_vendor_sale_item_set_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent
    _$DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponentFromJson(
        Map<String, dynamic> json) {
  return DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent()
    ..data = (json['data'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : PersonalDestinyVendorSaleItemSetComponent.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponentToJson(
            DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
