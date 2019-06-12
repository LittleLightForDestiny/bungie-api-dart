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
    ..privacy = json['privacy'] as int;
}

Map<String, dynamic>
    _$DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponentToJson(
            DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent
                instance) =>
        <String, dynamic>{'data': instance.data, 'privacy': instance.privacy};
