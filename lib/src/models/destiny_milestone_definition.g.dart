// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneDefinition _$DestinyMilestoneDefinitionFromJson(
        Map<String, dynamic> json) =>
    DestinyMilestoneDefinition()
      ..displayProperties = json['displayProperties'] == null
          ? null
          : DestinyDisplayPropertiesDefinition.fromJson(
              json['displayProperties'] as Map<String, dynamic>)
      ..displayPreference =
          decodeDestinyMilestoneDisplayPreference(json['displayPreference'])
      ..image = json['image'] as String?
      ..milestoneType = decodeDestinyMilestoneType(json['milestoneType'])
      ..recruitable = json['recruitable'] as bool?
      ..friendlyName = json['friendlyName'] as String?
      ..showInExplorer = json['showInExplorer'] as bool?
      ..showInMilestones = json['showInMilestones'] as bool?
      ..explorePrioritizesActivityImage =
          json['explorePrioritizesActivityImage'] as bool?
      ..hasPredictableDates = json['hasPredictableDates'] as bool?
      ..quests = (json['quests'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            DestinyMilestoneQuestDefinition.fromJson(
                e as Map<String, dynamic>)),
      )
      ..rewards = (json['rewards'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            DestinyMilestoneRewardCategoryDefinition.fromJson(
                e as Map<String, dynamic>)),
      )
      ..vendorsDisplayTitle = json['vendorsDisplayTitle'] as String?
      ..vendors = (json['vendors'] as List<dynamic>?)
          ?.map((e) => DestinyMilestoneVendorDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..values = (json['values'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k,
            DestinyMilestoneValueDefinition.fromJson(
                e as Map<String, dynamic>)),
      )
      ..isInGameMilestone = json['isInGameMilestone'] as bool?
      ..activities = (json['activities'] as List<dynamic>?)
          ?.map((e) => DestinyMilestoneChallengeActivityDefinition.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..defaultOrder = json['defaultOrder'] as int?
      ..hash = json['hash'] as int?
      ..index = json['index'] as int?
      ..redacted = json['redacted'] as bool?;

Map<String, dynamic> _$DestinyMilestoneDefinitionToJson(
        DestinyMilestoneDefinition instance) =>
    <String, dynamic>{
      'displayProperties': instance.displayProperties,
      'displayPreference':
          encodeDestinyMilestoneDisplayPreference(instance.displayPreference),
      'image': instance.image,
      'milestoneType': encodeDestinyMilestoneType(instance.milestoneType),
      'recruitable': instance.recruitable,
      'friendlyName': instance.friendlyName,
      'showInExplorer': instance.showInExplorer,
      'showInMilestones': instance.showInMilestones,
      'explorePrioritizesActivityImage':
          instance.explorePrioritizesActivityImage,
      'hasPredictableDates': instance.hasPredictableDates,
      'quests': instance.quests,
      'rewards': instance.rewards,
      'vendorsDisplayTitle': instance.vendorsDisplayTitle,
      'vendors': instance.vendors,
      'values': instance.values,
      'isInGameMilestone': instance.isInGameMilestone,
      'activities': instance.activities,
      'defaultOrder': instance.defaultOrder,
      'hash': instance.hash,
      'index': instance.index,
      'redacted': instance.redacted,
    };
