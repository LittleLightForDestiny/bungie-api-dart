// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cedictionary_ofstring_andstring_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CEDictionaryOfstringAndstringResponse
_$CEDictionaryOfstringAndstringResponseFromJson(Map<String, dynamic> json) =>
    CEDictionaryOfstringAndstringResponse(
      response: (json['Response'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      errorCode: decodePlatformErrorCodes(json['ErrorCode']),
      throttleSeconds: (json['ThrottleSeconds'] as num?)?.toInt(),
      errorStatus: json['ErrorStatus'] as String?,
      message: json['Message'] as String?,
      messageData: (json['MessageData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String?,
    );

Map<String, dynamic> _$CEDictionaryOfstringAndstringResponseToJson(
  CEDictionaryOfstringAndstringResponse instance,
) => <String, dynamic>{
  'Response': instance.response,
  'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
  'ThrottleSeconds': instance.throttleSeconds,
  'ErrorStatus': instance.errorStatus,
  'Message': instance.message,
  'MessageData': instance.messageData,
  'DetailedErrorTrace': instance.detailedErrorTrace,
};
