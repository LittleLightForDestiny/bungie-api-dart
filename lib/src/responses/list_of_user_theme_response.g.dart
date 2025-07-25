// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_user_theme_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOfUserThemeResponse _$ListOfUserThemeResponseFromJson(
  Map<String, dynamic> json,
) => ListOfUserThemeResponse(
  response:
      (json['Response'] as List<dynamic>?)
          ?.map((e) => UserTheme.fromJson(e as Map<String, dynamic>))
          .toList(),
  errorCode: decodePlatformErrorCodes(json['ErrorCode']),
  throttleSeconds: (json['ThrottleSeconds'] as num?)?.toInt(),
  errorStatus: json['ErrorStatus'] as String?,
  message: json['Message'] as String?,
  messageData: (json['MessageData'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(k, e as String),
  ),
  detailedErrorTrace: json['DetailedErrorTrace'] as String?,
);

Map<String, dynamic> _$ListOfUserThemeResponseToJson(
  ListOfUserThemeResponse instance,
) => <String, dynamic>{
  'Response': instance.response?.map((e) => e.toJson()).toList(),
  'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
  'ThrottleSeconds': instance.throttleSeconds,
  'ErrorStatus': instance.errorStatus,
  'Message': instance.message,
  'MessageData': instance.messageData,
  'DetailedErrorTrace': instance.detailedErrorTrace,
};
