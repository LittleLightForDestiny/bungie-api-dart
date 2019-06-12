// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_membership_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserMembershipDataResponse _$UserMembershipDataResponseFromJson(
    Map<String, dynamic> json) {
  return UserMembershipDataResponse(
      response: json['Response'] == null
          ? null
          : UserMembershipData.fromJson(
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

Map<String, dynamic> _$UserMembershipDataResponseToJson(
        UserMembershipDataResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': instance.errorCode,
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace
    };
