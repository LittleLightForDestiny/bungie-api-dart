// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_report_reason_category_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyReportReasonCategoryDefinition
    _$DestinyReportReasonCategoryDefinitionFromJson(Map<String, dynamic> json) {
  return DestinyReportReasonCategoryDefinition()
    ..displayProperties = json['displayProperties'] == null
        ? null
        : DestinyDisplayPropertiesDefinition.fromJson(
            json['displayProperties'] as Map<String, dynamic>)
    ..reasons = (json['reasons'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k,
          e == null
              ? null
              : DestinyReportReasonDefinition.fromJson(
                  e as Map<String, dynamic>)),
    )
    ..hash = json['hash'] as int
    ..index = json['index'] as int
    ..redacted = json['redacted'] as bool;
}

Map<String, dynamic> _$DestinyReportReasonCategoryDefinitionToJson(
        DestinyReportReasonCategoryDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'reasons': instance.reasons,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
