// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorResponse _$DestinyVendorResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyVendorResponse()
      ..vendor =
          json['vendor'] == null
              ? null
              : SingleComponentResponseOfDestinyVendorComponent.fromJson(
                json['vendor'] as Map<String, dynamic>,
              )
      ..categories =
          json['categories'] == null
              ? null
              : SingleComponentResponseOfDestinyVendorCategoriesComponent.fromJson(
                json['categories'] as Map<String, dynamic>,
              )
      ..sales =
          json['sales'] == null
              ? null
              : DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent.fromJson(
                json['sales'] as Map<String, dynamic>,
              )
      ..itemComponents =
          json['itemComponents'] == null
              ? null
              : DestinyVendorItemComponentSetOfint32.fromJson(
                json['itemComponents'] as Map<String, dynamic>,
              )
      ..currencyLookups =
          json['currencyLookups'] == null
              ? null
              : SingleComponentResponseOfDestinyCurrenciesComponent.fromJson(
                json['currencyLookups'] as Map<String, dynamic>,
              )
      ..stringVariables =
          json['stringVariables'] == null
              ? null
              : SingleComponentResponseOfDestinyStringVariablesComponent.fromJson(
                json['stringVariables'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyVendorResponseToJson(
  DestinyVendorResponse instance,
) => <String, dynamic>{
  'vendor': instance.vendor?.toJson(),
  'categories': instance.categories?.toJson(),
  'sales': instance.sales?.toJson(),
  'itemComponents': instance.itemComponents?.toJson(),
  'currencyLookups': instance.currencyLookups?.toJson(),
  'stringVariables': instance.stringVariables?.toJson(),
};
