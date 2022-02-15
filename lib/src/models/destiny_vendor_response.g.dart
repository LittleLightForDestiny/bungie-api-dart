// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorResponse _$DestinyVendorResponseFromJson(
        Map<String, dynamic> json) =>
    DestinyVendorResponse()
      ..vendor = json['vendor'] == null
          ? null
          : SingleComponentResponseOfDestinyVendorComponent.fromJson(
              json['vendor'] as Map<String, dynamic>)
      ..categories = json['categories'] == null
          ? null
          : SingleComponentResponseOfDestinyVendorCategoriesComponent.fromJson(
              json['categories'] as Map<String, dynamic>)
      ..sales = json['sales'] == null
          ? null
          : DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent
              .fromJson(json['sales'] as Map<String, dynamic>)
      ..itemComponents = json['itemComponents'] == null
          ? null
          : DestinyItemComponentSetOfint32.fromJson(
              json['itemComponents'] as Map<String, dynamic>)
      ..currencyLookups = json['currencyLookups'] == null
          ? null
          : SingleComponentResponseOfDestinyCurrenciesComponent.fromJson(
              json['currencyLookups'] as Map<String, dynamic>)
      ..stringVariables = json['stringVariables'] == null
          ? null
          : SingleComponentResponseOfDestinyStringVariablesComponent.fromJson(
              json['stringVariables'] as Map<String, dynamic>);

Map<String, dynamic> _$DestinyVendorResponseToJson(
        DestinyVendorResponse instance) =>
    <String, dynamic>{
      'vendor': instance.vendor,
      'categories': instance.categories,
      'sales': instance.sales,
      'itemComponents': instance.itemComponents,
      'currencyLookups': instance.currencyLookups,
      'stringVariables': instance.stringVariables,
    };
