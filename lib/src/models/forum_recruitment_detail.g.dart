// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_recruitment_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForumRecruitmentDetail _$ForumRecruitmentDetailFromJson(
        Map<String, dynamic> json) =>
    ForumRecruitmentDetail()
      ..topicId = json['topicId'] as String?
      ..microphoneRequired = json['microphoneRequired'] as bool?
      ..intensity = decodeForumRecruitmentIntensityLabel(json['intensity'])
      ..tone = decodeForumRecruitmentToneLabel(json['tone'])
      ..approved = json['approved'] as bool?
      ..conversationId = json['conversationId'] as String?
      ..playerSlotsTotal = (json['playerSlotsTotal'] as num?)?.toInt()
      ..playerSlotsRemaining = (json['playerSlotsRemaining'] as num?)?.toInt()
      ..fireteam = (json['Fireteam'] as List<dynamic>?)
          ?.map((e) => GeneralUser.fromJson(e as Map<String, dynamic>))
          .toList()
      ..kickedPlayerIds = (json['kickedPlayerIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList();

Map<String, dynamic> _$ForumRecruitmentDetailToJson(
        ForumRecruitmentDetail instance) =>
    <String, dynamic>{
      'topicId': instance.topicId,
      'microphoneRequired': instance.microphoneRequired,
      'intensity': encodeForumRecruitmentIntensityLabel(instance.intensity),
      'tone': encodeForumRecruitmentToneLabel(instance.tone),
      'approved': instance.approved,
      'conversationId': instance.conversationId,
      'playerSlotsTotal': instance.playerSlotsTotal,
      'playerSlotsRemaining': instance.playerSlotsRemaining,
      'Fireteam': instance.fireteam?.map((e) => e.toJson()).toList(),
      'kickedPlayerIds': instance.kickedPlayerIds,
    };
