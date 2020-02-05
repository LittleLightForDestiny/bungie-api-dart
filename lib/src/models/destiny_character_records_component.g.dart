// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_character_records_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCharacterRecordsComponent _$DestinyCharacterRecordsComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyCharacterRecordsComponent()
    ..featuredRecordHashes =
        (json['featuredRecordHashes'] as List)?.map((e) => e as int)?.toList()
    ..records = (json['records'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyRecordComponent.fromJson(e as Map<String, dynamic>)),
    );
}

Map<String, dynamic> _$DestinyCharacterRecordsComponentToJson(
        DestinyCharacterRecordsComponent instance) =>
    <String, dynamic>{
      'featuredRecordHashes': instance.featuredRecordHashes,
      'records': instance.records,
    };
