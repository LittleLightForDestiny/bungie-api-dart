// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_records_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordsComponent _$DestinyRecordsComponentFromJson(
    Map<String, dynamic> json) {
  return DestinyRecordsComponent()
    ..records = (json['records'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyRecordComponent.fromJson(e as Map<String, dynamic>)),
    );
}

Map<String, dynamic> _$DestinyRecordsComponentToJson(
        DestinyRecordsComponent instance) =>
    <String, dynamic>{'records': instance.records};
