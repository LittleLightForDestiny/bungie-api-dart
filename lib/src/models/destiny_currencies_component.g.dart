// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_currencies_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCurrenciesComponent _$DestinyCurrenciesComponentFromJson(
  Map<String, dynamic> json,
) =>
    DestinyCurrenciesComponent()
      ..itemQuantities = (json['itemQuantities'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      )
      ..materialRequirementSetStates =
          (json['materialRequirementSetStates'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
              k,
              DestinyMaterialRequirementSetState.fromJson(
                e as Map<String, dynamic>,
              ),
            ),
          );

Map<String, dynamic> _$DestinyCurrenciesComponentToJson(
  DestinyCurrenciesComponent instance,
) => <String, dynamic>{
  'itemQuantities': instance.itemQuantities,
  'materialRequirementSetStates': instance.materialRequirementSetStates?.map(
    (k, e) => MapEntry(k, e.toJson()),
  ),
};
