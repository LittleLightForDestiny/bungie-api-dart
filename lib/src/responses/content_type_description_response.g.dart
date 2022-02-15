// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_type_description_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentTypeDescriptionResponse _$ContentTypeDescriptionResponseFromJson(
        Map<String, dynamic> json) =>
    ContentTypeDescriptionResponse(
      response: json['Response'] == null
          ? null
          : ContentTypeDescription.fromJson(
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

Map<String, dynamic> _$ContentTypeDescriptionResponseToJson(
        ContentTypeDescriptionResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
