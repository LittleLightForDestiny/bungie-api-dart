// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fireteam_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FireteamSummary _$FireteamSummaryFromJson(Map<String, dynamic> json) =>
    FireteamSummary()
      ..fireteamId = json['fireteamId'] as String?
      ..groupId = json['groupId'] as String?
      ..platform = decodeFireteamPlatform(json['platform'])
      ..activityType = json['activityType'] as int?
      ..isImmediate = json['isImmediate'] as bool?
      ..scheduledTime = json['scheduledTime'] as String?
      ..ownerMembershipId = json['ownerMembershipId'] as String?
      ..playerSlotCount = json['playerSlotCount'] as int?
      ..alternateSlotCount = json['alternateSlotCount'] as int?
      ..availablePlayerSlotCount = json['availablePlayerSlotCount'] as int?
      ..availableAlternateSlotCount =
          json['availableAlternateSlotCount'] as int?
      ..title = json['title'] as String?
      ..dateCreated = json['dateCreated'] as String?
      ..dateModified = json['dateModified'] as String?
      ..isPublic = json['isPublic'] as bool?
      ..locale = json['locale'] as String?
      ..isValid = json['isValid'] as bool?
      ..datePlayerModified = json['datePlayerModified'] as String?
      ..titleBeforeModeration = json['titleBeforeModeration'] as String?
      ..ownerCurrentGuardianRankSnapshot =
          json['ownerCurrentGuardianRankSnapshot'] as int?
      ..ownerHighestLifetimeGuardianRankSnapshot =
          json['ownerHighestLifetimeGuardianRankSnapshot'] as int?
      ..ownerTotalCommendationScoreSnapshot =
          json['ownerTotalCommendationScoreSnapshot'] as int?;

Map<String, dynamic> _$FireteamSummaryToJson(FireteamSummary instance) =>
    <String, dynamic>{
      'fireteamId': instance.fireteamId,
      'groupId': instance.groupId,
      'platform': encodeFireteamPlatform(instance.platform),
      'activityType': instance.activityType,
      'isImmediate': instance.isImmediate,
      'scheduledTime': instance.scheduledTime,
      'ownerMembershipId': instance.ownerMembershipId,
      'playerSlotCount': instance.playerSlotCount,
      'alternateSlotCount': instance.alternateSlotCount,
      'availablePlayerSlotCount': instance.availablePlayerSlotCount,
      'availableAlternateSlotCount': instance.availableAlternateSlotCount,
      'title': instance.title,
      'dateCreated': instance.dateCreated,
      'dateModified': instance.dateModified,
      'isPublic': instance.isPublic,
      'locale': instance.locale,
      'isValid': instance.isValid,
      'datePlayerModified': instance.datePlayerModified,
      'titleBeforeModeration': instance.titleBeforeModeration,
      'ownerCurrentGuardianRankSnapshot':
          instance.ownerCurrentGuardianRankSnapshot,
      'ownerHighestLifetimeGuardianRankSnapshot':
          instance.ownerHighestLifetimeGuardianRankSnapshot,
      'ownerTotalCommendationScoreSnapshot':
          instance.ownerTotalCommendationScoreSnapshot,
    };
