// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forum_recruitment_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForumRecruitmentDetail _$ForumRecruitmentDetailFromJson(
    Map<String, dynamic> json) {
  return ForumRecruitmentDetail()
    ..topicId = json['topicId'] as String?
    ..microphoneRequired = json['microphoneRequired'] as bool?
    ..intensity = _$enumDecodeNullable(
        _$ForumRecruitmentIntensityLabelEnumMap, json['intensity'],
        unknownValue: ForumRecruitmentIntensityLabel.ProtectedInvalidEnumValue)
    ..tone = _$enumDecodeNullable(
        _$ForumRecruitmentToneLabelEnumMap, json['tone'],
        unknownValue: ForumRecruitmentToneLabel.ProtectedInvalidEnumValue)
    ..approved = json['approved'] as bool?
    ..conversationId = json['conversationId'] as String?
    ..playerSlotsTotal = json['playerSlotsTotal'] as int?
    ..playerSlotsRemaining = json['playerSlotsRemaining'] as int?
    ..fireteam = (json['Fireteam'] as List<dynamic>?)
        ?.map((e) => GeneralUser.fromJson(e as Map<String, dynamic>))
        .toList()
    ..kickedPlayerIds = (json['kickedPlayerIds'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList();
}

Map<String, dynamic> _$ForumRecruitmentDetailToJson(
        ForumRecruitmentDetail instance) =>
    <String, dynamic>{
      'topicId': instance.topicId,
      'microphoneRequired': instance.microphoneRequired,
      'intensity': _$ForumRecruitmentIntensityLabelEnumMap[instance.intensity],
      'tone': _$ForumRecruitmentToneLabelEnumMap[instance.tone],
      'approved': instance.approved,
      'conversationId': instance.conversationId,
      'playerSlotsTotal': instance.playerSlotsTotal,
      'playerSlotsRemaining': instance.playerSlotsRemaining,
      'Fireteam': instance.fireteam,
      'kickedPlayerIds': instance.kickedPlayerIds,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$ForumRecruitmentIntensityLabelEnumMap = {
  ForumRecruitmentIntensityLabel.None: 0,
  ForumRecruitmentIntensityLabel.Casual: 1,
  ForumRecruitmentIntensityLabel.Professional: 2,
  ForumRecruitmentIntensityLabel.ProtectedInvalidEnumValue: 999999999,
};

const _$ForumRecruitmentToneLabelEnumMap = {
  ForumRecruitmentToneLabel.None: 0,
  ForumRecruitmentToneLabel.FamilyFriendly: 1,
  ForumRecruitmentToneLabel.Rowdy: 2,
  ForumRecruitmentToneLabel.ProtectedInvalidEnumValue: 999999999,
};
