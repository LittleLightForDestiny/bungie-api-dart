// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_public_vendors_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPublicVendorsResponse _$DestinyPublicVendorsResponseFromJson(
  Map<String, dynamic> json,
) =>
    DestinyPublicVendorsResponse()
      ..vendorGroups =
          json['vendorGroups'] == null
              ? null
              : SingleComponentResponseOfDestinyVendorGroupComponent.fromJson(
                json['vendorGroups'] as Map<String, dynamic>,
              )
      ..vendors =
          json['vendors'] == null
              ? null
              : DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent.fromJson(
                json['vendors'] as Map<String, dynamic>,
              )
      ..categories =
          json['categories'] == null
              ? null
              : DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent.fromJson(
                json['categories'] as Map<String, dynamic>,
              )
      ..sales =
          json['sales'] == null
              ? null
              : DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent.fromJson(
                json['sales'] as Map<String, dynamic>,
              )
      ..stringVariables =
          json['stringVariables'] == null
              ? null
              : SingleComponentResponseOfDestinyStringVariablesComponent.fromJson(
                json['stringVariables'] as Map<String, dynamic>,
              );

Map<String, dynamic> _$DestinyPublicVendorsResponseToJson(
  DestinyPublicVendorsResponse instance,
) => <String, dynamic>{
  'vendorGroups': instance.vendorGroups?.toJson(),
  'vendors': instance.vendors?.toJson(),
  'categories': instance.categories?.toJson(),
  'sales': instance.sales?.toJson(),
  'stringVariables': instance.stringVariables?.toJson(),
};
