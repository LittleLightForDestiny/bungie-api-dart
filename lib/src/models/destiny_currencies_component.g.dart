// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_currencies_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCurrenciesComponent _$DestinyCurrenciesComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyCurrenciesComponent()
    ..itemQuantities = (json['itemQuantities'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as int),
    );
}

Map<String, dynamic> _$DestinyCurrenciesComponentToJson(
        DestinyCurrenciesComponent instance) =>
    <String, dynamic>{
      'itemQuantities': instance.itemQuantities,
    };
