// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ienumerable_of_user_info_card_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IEnumerableOfUserInfoCardResponse _$IEnumerableOfUserInfoCardResponseFromJson(
        Map<String, dynamic> json) =>
    IEnumerableOfUserInfoCardResponse(
      response: (json['Response'] as List<dynamic>?)
          ?.map((e) => UserInfoCard.fromJson(e as Map<String, dynamic>))
          .toList(),
      errorCode: decodePlatformErrorCodes(json['ErrorCode']),
      throttleSeconds: json['ThrottleSeconds'] as int?,
      errorStatus: json['ErrorStatus'] as String?,
      message: json['Message'] as String?,
      messageData: (json['MessageData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String?,
    );

Map<String, dynamic> _$IEnumerableOfUserInfoCardResponseToJson(
        IEnumerableOfUserInfoCardResponse instance) =>
    <String, dynamic>{
      'Response': instance.response?.map((e) => e.toJson()).toList(),
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
