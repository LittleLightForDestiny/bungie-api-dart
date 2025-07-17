// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_ofstring_and_bungie_reward_display_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DictionaryOfstringAndBungieRewardDisplayResponse
    _$DictionaryOfstringAndBungieRewardDisplayResponseFromJson(
            Map<String, dynamic> json) =>
        DictionaryOfstringAndBungieRewardDisplayResponse(
          response: (json['Response'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, BungieRewardDisplay.fromJson(e as Map<String, dynamic>)),
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

Map<String, dynamic> _$DictionaryOfstringAndBungieRewardDisplayResponseToJson(
        DictionaryOfstringAndBungieRewardDisplayResponse instance) =>
    <String, dynamic>{
      'Response': instance.response?.map((k, e) => MapEntry(k, e.toJson())),
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
