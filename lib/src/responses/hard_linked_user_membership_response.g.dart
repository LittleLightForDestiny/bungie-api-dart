// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hard_linked_user_membership_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HardLinkedUserMembershipResponse _$HardLinkedUserMembershipResponseFromJson(
  Map<String, dynamic> json,
) => HardLinkedUserMembershipResponse(
  response:
      json['Response'] == null
          ? null
          : HardLinkedUserMembership.fromJson(
            json['Response'] as Map<String, dynamic>,
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

Map<String, dynamic> _$HardLinkedUserMembershipResponseToJson(
  HardLinkedUserMembershipResponse instance,
) => <String, dynamic>{
  'Response': instance.response?.toJson(),
  'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
  'ThrottleSeconds': instance.throttleSeconds,
  'ErrorStatus': instance.errorStatus,
  'Message': instance.message,
  'MessageData': instance.messageData,
  'DetailedErrorTrace': instance.detailedErrorTrace,
};
