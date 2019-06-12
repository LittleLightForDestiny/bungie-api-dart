// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'celist_of_global_alert_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CEListOfGlobalAlertResponse _$CEListOfGlobalAlertResponseFromJson(
    Map<String, dynamic> json) {
  return CEListOfGlobalAlertResponse(
      response: (json['Response'] as List)
          ?.map((e) => e == null
              ? null
              : GlobalAlert.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      errorCode: json['ErrorCode'] as int,
      throttleSeconds: json['ThrottleSeconds'] as int,
      errorStatus: json['ErrorStatus'] as String,
      message: json['Message'] as String,
      messageData: (json['MessageData'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String);
}

Map<String, dynamic> _$CEListOfGlobalAlertResponseToJson(
        CEListOfGlobalAlertResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': instance.errorCode,
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace
    };
