// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_potential_membership_search_response_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupPotentialMembershipSearchResponseResponse
    _$GroupPotentialMembershipSearchResponseResponseFromJson(
            Map<String, dynamic> json) =>
        GroupPotentialMembershipSearchResponseResponse(
          response: json['Response'] == null
              ? null
              : GroupPotentialMembershipSearchResponse.fromJson(
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

Map<String, dynamic> _$GroupPotentialMembershipSearchResponseResponseToJson(
        GroupPotentialMembershipSearchResponseResponse instance) =>
    <String, dynamic>{
      'Response': instance.response,
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
