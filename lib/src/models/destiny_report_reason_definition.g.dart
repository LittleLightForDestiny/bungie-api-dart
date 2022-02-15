// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_report_reason_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyReportReasonDefinition _$DestinyReportReasonDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyReportReasonDefinition()
      ..reasonHash = json['reasonHash'] as int?
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>);

Map<String, dynamic> _$DestinyReportReasonDefinitionToJson(
        DestinyReportReasonDefinition instance) =>
    <String, dynamic>{
      'reasonHash': instance.reasonHash,
      'displayProperties': instance.displayProperties,
    };
