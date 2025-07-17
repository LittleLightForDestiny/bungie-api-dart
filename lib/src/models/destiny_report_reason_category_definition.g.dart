// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_report_reason_category_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyReportReasonCategoryDefinition
_$DestinyReportReasonCategoryDefinitionFromJson(Map<String, dynamic> json) =>
    DestinyReportReasonCategoryDefinition()
      ..displayProperties =
          json['displayProperties'] == null
              ? null
              : DestinyDisplayPropertiesDefinition.fromJson(
                json['displayProperties'] as Map<String, dynamic>,
              )
      ..reasons = (json['reasons'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DestinyReportReasonDefinition.fromJson(e as Map<String, dynamic>),
        ),
      )
      ..hash = (json['hash'] as num?)?.toInt()
      ..index = (json['index'] as num?)?.toInt()
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyReportReasonCategoryDefinitionToJson(
  DestinyReportReasonCategoryDefinition instance,
) => <String, dynamic>{
  'displayProperties': instance.displayProperties?.toJson(),
  'reasons': instance.reasons?.map((k, e) => MapEntry(k, e.toJson())),
  'hash': instance.hash,
  'index': instance.index,
  'redacted': instance.redacted,
};
