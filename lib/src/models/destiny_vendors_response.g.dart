// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_vendors_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyVendorsResponse _$DestinyVendorsResponseFromJson(
    Map<String, dynamic> json) {
  return DestinyVendorsResponse()
    ..vendorGroups = json['vendorGroups'] == null
        ? null
        : SingleComponentResponseOfDestinyVendorGroupComponent.fromJson(
            json['vendorGroups'] as Map<String, dynamic>)
    ..vendors = json['vendors'] == null
        ? null
        : DictionaryComponentResponseOfuint32AndDestinyVendorComponent.fromJson(
            json['vendors'] as Map<String, dynamic>)
    ..categories = json['categories'] == null
        ? null
        : DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent
            .fromJson(json['categories'] as Map<String, dynamic>)
    ..sales = json['sales'] == null
        ? null
        : DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent
            .fromJson(json['sales'] as Map<String, dynamic>)
    ..itemComponents = (json['itemComponents'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k,
          DestinyItemComponentSetOfint32.fromJson(e as Map<String, dynamic>)),
    )
    ..currencyLookups = json['currencyLookups'] == null
        ? null
        : SingleComponentResponseOfDestinyCurrenciesComponent.fromJson(
            json['currencyLookups'] as Map<String, dynamic>)
    ..stringVariables = json['stringVariables'] == null
        ? null
        : SingleComponentResponseOfDestinyStringVariablesComponent.fromJson(
            json['stringVariables'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DestinyVendorsResponseToJson(
        DestinyVendorsResponse instance) =>
    <String, dynamic>{
      'vendorGroups': instance.vendorGroups,
      'vendors': instance.vendors,
      'categories': instance.categories,
      'sales': instance.sales,
      'itemComponents': instance.itemComponents,
      'currencyLookups': instance.currencyLookups,
      'stringVariables': instance.stringVariables,
    };
