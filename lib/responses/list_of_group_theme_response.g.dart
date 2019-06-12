// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_of_group_theme_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOfGroupThemeResponse _$ListOfGroupThemeResponseFromJson(
    Map<String, dynamic> json) {
  return ListOfGroupThemeResponse(
      response: (json['Response'] as List)
          ?.map((e) =>
              e == null ? null : GroupTheme.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      errorCode: json['ErrorCode'] as int,
      throttleSeconds: json['ThrottleSeconds'] as int,
      errorStatus: json['ErrorStatus'] as String,
      message: json['Message'] as String,
      messageData: (json['MessageData'] as Map<String, dynamic>)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String);
}

Map<String, dynamic> _$ListOfGroupThemeResponseToJson(
        ListOfGroupThemeResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': instance.errorCode,
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace
    };
