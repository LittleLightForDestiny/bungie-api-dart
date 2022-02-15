// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_equip_item_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyEquipItemResults _$DestinyEquipItemResultsFromJson(
        Map<String, dynamic> json) =>
    DestinyEquipItemResults()
      ..equipResults = (json['equipResults'] as List<dynamic>?)
          ?.map(
              (e) => DestinyEquipItemResult.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DestinyEquipItemResultsToJson(
        DestinyEquipItemResults instance) =>
    <String, dynamic>{
      'equipResults': instance.equipResults,
    };
