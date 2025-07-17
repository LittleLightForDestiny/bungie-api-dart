// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_groups_for_member_response_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetGroupsForMemberResponseResponse _$GetGroupsForMemberResponseResponseFromJson(
        Map<String, dynamic> json) =>
    GetGroupsForMemberResponseResponse(
      response: json['Response'] == null
          ? null
          : GetGroupsForMemberResponse.fromJson(
              json['Response'] as Map<String, dynamic>),
      errorCode: decodePlatformErrorCodes(json['ErrorCode']),
      throttleSeconds: (json['ThrottleSeconds'] as num?)?.toInt(),
      errorStatus: json['ErrorStatus'] as String?,
      message: json['Message'] as String?,
      messageData: (json['MessageData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      detailedErrorTrace: json['DetailedErrorTrace'] as String?,
    );

Map<String, dynamic> _$GetGroupsForMemberResponseResponseToJson(
        GetGroupsForMemberResponseResponse instance) =>
    <String, dynamic>{
      'Response': instance.response?.toJson(),
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
