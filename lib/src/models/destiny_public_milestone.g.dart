// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_public_milestone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyPublicMilestone _$DestinyPublicMilestoneFromJson(
        Map<String, dynamic> json) =>
    DestinyPublicMilestone()
      ..milestoneHash = json['milestoneHash'] as int?
      ..availableQuests = (json['availableQuests'] as List<dynamic>?)
          ?.map((e) =>
              DestinyPublicMilestoneQuest.fromJson(e as Map<String, dynamic>))
          .toList()
      ..activities = (json['activities'] as List<dynamic>?)
          ?.map((e) => DestinyPublicMilestoneChallengeActivity.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..vendorHashes = (json['vendorHashes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList()
      ..vendors = (json['vendors'] as List<dynamic>?)
          ?.map((e) =>
              DestinyPublicMilestoneVendor.fromJson(e as Map<String, dynamic>))
          .toList()
      ..startDate = json['startDate'] as String?
      ..endDate = json['endDate'] as String?
      ..order = json['order'] as int?;

Map<String, dynamic> _$DestinyPublicMilestoneToJson(
        DestinyPublicMilestone instance) =>
    <String, dynamic>{
      'milestoneHash': instance.milestoneHash,
      'availableQuests':
          instance.availableQuests?.map((e) => e.toJson()).toList(),
      'activities': instance.activities?.map((e) => e.toJson()).toList(),
      'vendorHashes': instance.vendorHashes,
      'vendors': instance.vendors?.map((e) => e.toJson()).toList(),
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'order': instance.order,
    };
