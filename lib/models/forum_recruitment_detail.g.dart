// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_recruitment_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForumRecruitmentDetail _$ForumRecruitmentDetailFromJson(
    Map<String, dynamic> json) {
  return ForumRecruitmentDetail()
    ..topicId = json['topicId'] as String
    ..microphoneRequired = json['microphoneRequired'] as bool
    ..intensity = json['intensity'] as int
    ..tone = json['tone'] as int
    ..approved = json['approved'] as bool
    ..conversationId = json['conversationId'] as String
    ..playerSlotsTotal = json['playerSlotsTotal'] as int
    ..playerSlotsRemaining = json['playerSlotsRemaining'] as int
    ..fireteam = (json['Fireteam'] as List)
        ?.map((e) =>
            e == null ? null : GeneralUser.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..kickedPlayerIds =
        (json['kickedPlayerIds'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$ForumRecruitmentDetailToJson(
        ForumRecruitmentDetail instance) =>
    <String, dynamic>{
      'topicId': instance.topicId,
      'microphoneRequired': instance.microphoneRequired,
      'intensity': instance.intensity,
      'tone': instance.tone,
      'approved': instance.approved,
      'conversationId': instance.conversationId,
      'playerSlotsTotal': instance.playerSlotsTotal,
      'playerSlotsRemaining': instance.playerSlotsRemaining,
      'Fireteam': instance.fireteam,
      'kickedPlayerIds': instance.kickedPlayerIds
    };
