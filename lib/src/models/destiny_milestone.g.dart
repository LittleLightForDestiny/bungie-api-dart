// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestone _$DestinyMilestoneFromJson(Map<String, dynamic> json) =>
    DestinyMilestone()
      ..milestoneHash = json['milestoneHash'] as int?
      ..availableQuests = (json['availableQuests'] as List<dynamic>?)
          ?.map(
              (e) => DestinyMilestoneQuest.fromJson(e as Map<String, dynamic>))
          .toList()
      ..activities = (json['activities'] as List<dynamic>?)
          ?.map((e) => DestinyMilestoneChallengeActivity.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..values = (json['values'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      )
      ..vendorHashes = (json['vendorHashes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..vendors = (json['vendors'] as List<dynamic>?)
          ?.map(
              (e) => DestinyMilestoneVendor.fromJson(e as Map<String, dynamic>))
          .toList()
      ..rewards = (json['rewards'] as List<dynamic>?)
          ?.map((e) => DestinyMilestoneRewardCategory.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..startDate = json['startDate'] as String?
      ..endDate = json['endDate'] as String?
      ..order = json['order'] as int?;

Map<String, dynamic> _$DestinyMilestoneToJson(DestinyMilestone instance) =>
    <String, dynamic>{
      'milestoneHash': instance.milestoneHash,
      'availableQuests': instance.availableQuests,
      'activities': instance.activities,
      'values': instance.values,
      'vendorHashes': instance.vendorHashes,
      'vendors': instance.vendors,
      'rewards': instance.rewards,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'order': instance.order,
    };
