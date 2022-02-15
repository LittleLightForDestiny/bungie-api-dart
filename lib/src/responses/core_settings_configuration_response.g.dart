// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_settings_configuration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoreSettingsConfigurationResponse _$CoreSettingsConfigurationResponseFromJson(
        Map<String, dynamic> json) =>
    CoreSettingsConfigurationResponse(
      response: json['Response'] == null
          ? null
          : CoreSettingsConfiguration.fromJson(
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

Map<String, dynamic> _$CoreSettingsConfigurationResponseToJson(
        CoreSettingsConfigurationResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
