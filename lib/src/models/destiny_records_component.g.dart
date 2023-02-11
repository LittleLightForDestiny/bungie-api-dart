// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_records_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordsComponent _$DestinyRecordsComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyRecordsComponent()
      ..records = (json['records'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, DestinyRecordComponent.fromJson(e as Map<String, dynamic>)),
      )
      ..recordCategoriesRootNodeHash =
          json['recordCategoriesRootNodeHash'] as int?
      ..recordSealsRootNodeHash = json['recordSealsRootNodeHash'] as int?;

Map<String, dynamic> _$DestinyRecordsComponentToJson(
        DestinyRecordsComponent instance) =>
    <String, dynamic>{
      'records': instance.records?.map((k, e) => MapEntry(k, e.toJson())),
      'recordCategoriesRootNodeHash': instance.recordCategoriesRootNodeHash,
      'recordSealsRootNodeHash': instance.recordSealsRootNodeHash,
    };
