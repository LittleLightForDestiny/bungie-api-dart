// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_character_response_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyCharacterResponseResponse _$DestinyCharacterResponseResponseFromJson(
    Map<String, dynamic> json) {
  return DestinyCharacterResponseResponse(
      response: json['Response'] == null
          ? null
          : DestinyCharacterResponse.fromJson(
              json['Response'] as Map<String, dynamic>),
      errorCode: json['ErrorCode'] as int,
      throttleSeconds: json['ThrottleSeconds'] as int,
      errorStatus: json['ErrorStatus'] as String,
      message: json['Message'] as String,
      messageData: (json['MessageData'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String);
}

Map<String, dynamic> _$DestinyCharacterResponseResponseToJson(
        DestinyCharacterResponseResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': instance.errorCode,
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace
    };
