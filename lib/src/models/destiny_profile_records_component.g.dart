// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_profile_records_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyProfileRecordsComponent _$DestinyProfileRecordsComponentFromJson(
        Map<String, dynamic> json) =>
    DestinyProfileRecordsComponent()
      ..score = json['score'] as int?
      ..activeScore = json['activeScore'] as int?
      ..legacyScore = json['legacyScore'] as int?
      ..lifetimeScore = json['lifetimeScore'] as int?
      ..trackedRecordHash = json['trackedRecordHash'] as int?
      ..records = (json['records'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, DestinyRecordComponent.fromJson(e as Map<String, dynamic>)),
      )
      ..recordCategoriesRootNodeHash =
          json['recordCategoriesRootNodeHash'] as int?
      ..recordSealsRootNodeHash = json['recordSealsRootNodeHash'] as int?;

Map<String, dynamic> _$DestinyProfileRecordsComponentToJson(
        DestinyProfileRecordsComponent instance) =>
    <String, dynamic>{
      'score': instance.score,
      'activeScore': instance.activeScore,
      'legacyScore': instance.legacyScore,
      'lifetimeScore': instance.lifetimeScore,
      'trackedRecordHash': instance.trackedRecordHash,
      'records': instance.records?.map((k, e) => MapEntry(k, e.toJson())),
      'recordCategoriesRootNodeHash': instance.recordCategoriesRootNodeHash,
      'recordSealsRootNodeHash': instance.recordSealsRootNodeHash,
    };
