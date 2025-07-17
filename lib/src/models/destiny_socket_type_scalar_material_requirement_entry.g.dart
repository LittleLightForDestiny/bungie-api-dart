// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_socket_type_scalar_material_requirement_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinySocketTypeScalarMaterialRequirementEntry
    _$DestinySocketTypeScalarMaterialRequirementEntryFromJson(
            Map<String, dynamic> json) =>
        DestinySocketTypeScalarMaterialRequirementEntry()
          ..currencyItemHash = (json['currencyItemHash'] as num?)?.toInt()
          ..scalarValue = (json['scalarValue'] as num?)?.toInt();

Map<String, dynamic> _$DestinySocketTypeScalarMaterialRequirementEntryToJson(
        DestinySocketTypeScalarMaterialRequirementEntry instance) =>
    <String, dynamic>{
      'currencyItemHash': instance.currencyItemHash,
      'scalarValue': instance.scalarValue,
    };
