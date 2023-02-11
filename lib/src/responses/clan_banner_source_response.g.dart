// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clan_banner_source_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClanBannerSourceResponse _$ClanBannerSourceResponseFromJson(
        Map<String, dynamic> json) =>
    ClanBannerSourceResponse(
      response: json['Response'] == null
          ? null
          : ClanBannerSource.fromJson(json['Response'] as Map<String, dynamic>),
      errorCode: decodePlatformErrorCodes(json['ErrorCode']),
      throttleSeconds: json['ThrottleSeconds'] as int?,
      errorStatus: json['ErrorStatus'] as String?,
      message: json['Message'] as String?,
      messageData: (json['MessageData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String?,
    );

Map<String, dynamic> _$ClanBannerSourceResponseToJson(
        ClanBannerSourceResponse instance) =>
    <String, dynamic>{
      'Response': instance.response?.toJson(),
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
