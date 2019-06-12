// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ienumerable_of_application_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IEnumerableOfApplicationResponse _$IEnumerableOfApplicationResponseFromJson(
    Map<String, dynamic> json) {
  return IEnumerableOfApplicationResponse(
      response: (json['Response'] as List)
          ?.map((e) => e == null
              ? null
              : Application.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$IEnumerableOfApplicationResponseToJson(
        IEnumerableOfApplicationResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': instance.errorCode,
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace
    };
