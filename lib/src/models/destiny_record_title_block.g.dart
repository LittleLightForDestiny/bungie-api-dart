// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_record_title_block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyRecordTitleBlock _$DestinyRecordTitleBlockFromJson(
  Map<String, dynamic> json,
) =>
    DestinyRecordTitleBlock()
      ..hasTitle = json['hasTitle'] as bool?
      ..titlesByGender = (json['titlesByGender'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      )
      ..titlesByGenderHash = (json['titlesByGenderHash']
              as Map<String, dynamic>?)
          ?.map((k, e) => MapEntry(k, e as String))
      ..gildingTrackingRecordHash =
          (json['gildingTrackingRecordHash'] as num?)?.toInt();

Map<String, dynamic> _$DestinyRecordTitleBlockToJson(
  DestinyRecordTitleBlock instance,
) => <String, dynamic>{
  'hasTitle': instance.hasTitle,
  'titlesByGender': instance.titlesByGender,
  'titlesByGenderHash': instance.titlesByGenderHash,
  'gildingTrackingRecordHash': instance.gildingTrackingRecordHash,
};
