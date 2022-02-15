// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_ofint32_andstring_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryOfint32AndstringResponse _$DictionaryOfint32AndstringResponseFromJson(
        Map<String, dynamic> json) =>
    DictionaryOfint32AndstringResponse(
      response: (json['Response'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      errorCode: decodePlatformErrorCodes(json['ErrorCode']),
      throttleSeconds: json['ThrottleSeconds'] as int?,
      errorStatus: json['ErrorStatus'] as String?,
      message: json['Message'] as String?,
      messageData: (json['MessageData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String?,
    );

Map<String, dynamic> _$DictionaryOfint32AndstringResponseToJson(
        DictionaryOfint32AndstringResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
