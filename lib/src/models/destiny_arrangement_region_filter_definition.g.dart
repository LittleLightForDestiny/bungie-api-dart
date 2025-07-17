// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_arrangement_region_filter_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyArrangementRegionFilterDefinition
    _$DestinyArrangementRegionFilterDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyArrangementRegionFilterDefinition()
          ..artArrangementRegionHash =
              (json['artArrangementRegionHash'] as num?)?.toInt()
          ..artArrangementRegionIndex =
              (json['artArrangementRegionIndex'] as num?)?.toInt()
          ..statHash = (json['statHash'] as num?)?.toInt()
          ..arrangementIndexByStatValue =
              (json['arrangementIndexByStatValue'] as Map<String, dynamic>?)
                  ?.map(
            (k, e) => MapEntry(k, (e as num).toInt()),
          );

Map<String, dynamic> _$DestinyArrangementRegionFilterDefinitionToJson(
        DestinyArrangementRegionFilterDefinition instance) =>
    <String, dynamic>{
      'artArrangementRegionHash': instance.artArrangementRegionHash,
      'artArrangementRegionIndex': instance.artArrangementRegionIndex,
      'statHash': instance.statHash,
      'arrangementIndexByStatValue': instance.arrangementIndexByStatValue,
    };
