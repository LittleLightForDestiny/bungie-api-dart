// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_report_offense_pgcr_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyReportOffensePgcrRequest _$DestinyReportOffensePgcrRequestFromJson(
  Map<String, dynamic> json,
) =>
    DestinyReportOffensePgcrRequest()
      ..reasonCategoryHashes =
          (json['reasonCategoryHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..reasonHashes =
          (json['reasonHashes'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList()
      ..offendingCharacterId = json['offendingCharacterId'] as String?;

Map<String, dynamic> _$DestinyReportOffensePgcrRequestToJson(
  DestinyReportOffensePgcrRequest instance,
) => <String, dynamic>{
  'reasonCategoryHashes': instance.reasonCategoryHashes,
  'reasonHashes': instance.reasonHashes,
  'offendingCharacterId': instance.offendingCharacterId,
};
