// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global_alert.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GlobalAlert _$GlobalAlertFromJson(Map<String, dynamic> json) =>
    GlobalAlert()
      ..alertKey = json['AlertKey'] as String?
      ..alertHtml = json['AlertHtml'] as String?
      ..alertTimestamp = json['AlertTimestamp'] as String?
      ..alertLink = json['AlertLink'] as String?
      ..alertLevel = decodeGlobalAlertLevel(json['AlertLevel'])
      ..alertType = decodeGlobalAlertType(json['AlertType'])
      ..streamInfo =
          json['StreamInfo'] == null
              ? null
              : StreamInfo.fromJson(json['StreamInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$GlobalAlertToJson(GlobalAlert instance) =>
    <String, dynamic>{
      'AlertKey': instance.alertKey,
      'AlertHtml': instance.alertHtml,
      'AlertTimestamp': instance.alertTimestamp,
      'AlertLink': instance.alertLink,
      'AlertLevel': encodeGlobalAlertLevel(instance.alertLevel),
      'AlertType': encodeGlobalAlertType(instance.alertType),
      'StreamInfo': instance.streamInfo?.toJson(),
    };
