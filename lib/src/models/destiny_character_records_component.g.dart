// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_character_records_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCharacterRecordsComponent _$DestinyCharacterRecordsComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyCharacterRecordsComponent()
      ..featuredRecordHashes = (json['featuredRecordHashes'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList()
      ..records = (json['records'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, DestinyRecordComponent.fromJson(e as Map<String, dynamic>)),
      )
      ..recordCategoriesRootNodeHash =
          (json['recordCategoriesRootNodeHash'] as num?)?.toInt()
      ..recordSealsRootNodeHash =
          (json['recordSealsRootNodeHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyCharacterRecordsComponentToJson(
        DestinyCharacterRecordsComponent instance) =>
    <String, dynamic>{
      'featuredRecordHashes': instance.featuredRecordHashes,
      'records': instance.records?.map((k, e) => MapEntry(k, e.toJson())),
      'recordCategoriesRootNodeHash': instance.recordCategoriesRootNodeHash,
      'recordSealsRootNodeHash': instance.recordSealsRootNodeHash,
    };
