// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'int64_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Int64Response _$Int64ResponseFromJson(Map<String, dynamic> json) =>
    Int64Response(
      response: json['Response'] as String?,
      errorCode: decodePlatformErrorCodes(json['ErrorCode']),
      throttleSeconds: (json['ThrottleSeconds'] as num?)?.toInt(),
      errorStatus: json['ErrorStatus'] as String?,
      message: json['Message'] as String?,
      messageData: (json['MessageData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String?,
    );

Map<String, dynamic> _$Int64ResponseToJson(Int64Response instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
