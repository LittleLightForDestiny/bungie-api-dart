// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_arrangement_region_filter_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyArrangementRegionFilterDefinition
    _$DestinyArrangementRegionFilterDefinitionFromJson(
            Map<String, dynamic> json) =>
        DestinyArrangementRegionFilterDefinition()
          ..artArrangementRegionHash = json['artArrangementRegionHash'] as int?
          ..artArrangementRegionIndex =
              json['artArrangementRegionIndex'] as int?
          ..statHash = json['statHash'] as int?
          ..arrangementIndexByStatValue =
              (json['arrangementIndexByStatValue'] as Map<String, dynamic>?)
                  ?.map(
            (k, e) => MapEntry(k, e as int),
          );

Map<String, dynamic> _$DestinyArrangementRegionFilterDefinitionToJson(
        DestinyArrangementRegionFilterDefinition instance) =>
    <String, dynamic>{
      'artArrangementRegionHash': instance.artArrangementRegionHash,
      'artArrangementRegionIndex': instance.artArrangementRegionIndex,
      'statHash': instance.statHash,
      'arrangementIndexByStatValue': instance.arrangementIndexByStatValue,
    };
