// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_component_response_ofint32_and_destiny_vendor_sale_item_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent
    _$DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponentFromJson(
            Map<String, dynamic> json) =>
        DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent()
          ..data = (json['data'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k,
                DestinyVendorSaleItemComponent.fromJson(
                    e as Map<String, dynamic>)),
          )
          ..privacy = decodeComponentPrivacySetting(json['privacy'])
          ..disabled = json['disabled'] as bool?;

Map<String, dynamic>
    _$DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponentToJson(
            DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent
                instance) =>
        <String, dynamic>{
          'data': instance.data,
          'privacy': encodeComponentPrivacySetting(instance.privacy),
          'disabled': instance.disabled,
        };
