// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awa_initialize_response_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AwaInitializeResponseResponse _$AwaInitializeResponseResponseFromJson(
        Map<String, dynamic> json) =>
    AwaInitializeResponseResponse(
      response: json['Response'] == null
          ? null
          : AwaInitializeResponse.fromJson(
              json['Response'] as Map<String, dynamic>),
      errorCode: decodePlatformErrorCodes(json['ErrorCode']),
      throttleSeconds: json['ThrottleSeconds'] as int?,
      errorStatus: json['ErrorStatus'] as String?,
      message: json['Message'] as String?,
      messageData: (json['MessageData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String?,
    );

Map<String, dynamic> _$AwaInitializeResponseResponseToJson(
        AwaInitializeResponseResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
