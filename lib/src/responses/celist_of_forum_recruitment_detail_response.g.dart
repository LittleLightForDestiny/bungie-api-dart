// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'celist_of_forum_recruitment_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CEListOfForumRecruitmentDetailResponse
    _$CEListOfForumRecruitmentDetailResponseFromJson(
            Map<String, dynamic> json) =>
        CEListOfForumRecruitmentDetailResponse(
          response: (json['Response'] as List<dynamic>?)
              ?.map((e) =>
                  ForumRecruitmentDetail.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$CEListOfForumRecruitmentDetailResponseToJson(
        CEListOfForumRecruitmentDetailResponse instance) =>
    <String, dynamic>{
      'Response': instance.response?.map((e) => e.toJson()).toList(),
      'ErrorCode': encodePlatformErrorCodes(instance.errorCode),
      'ThrottleSeconds': instance.throttleSeconds,
      'ErrorStatus': instance.errorStatus,
      'Message': instance.message,
      'MessageData': instance.messageData,
      'DetailedErrorTrace': instance.detailedErrorTrace,
    };
