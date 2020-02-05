// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_entry_destiny_ritual.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingEntryDestinyRitual _$TrendingEntryDestinyRitualFromJson(
    Map<String, dynamic> json) {
  return TrendingEntryDestinyRitual()
    ..image = json['image'] as String
    ..icon = json['icon'] as String
    ..title = json['title'] as String
    ..subtitle = json['subtitle'] as String
    ..dateStart = json['dateStart'] as String
    ..dateEnd = json['dateEnd'] as String
    ..milestoneDetails = json['milestoneDetails'] == null
        ? null
        : DestinyPublicMilestone.fromJson(
            json['milestoneDetails'] as Map<String, dynamic>)
    ..eventContent = json['eventContent'] == null
        ? null
        : DestinyMilestoneContent.fromJson(
            json['eventContent'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TrendingEntryDestinyRitualToJson(
        TrendingEntryDestinyRitual instance) =>
    <String, dynamic>{
      'image': instance.image,
      'icon': instance.icon,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'dateStart': instance.dateStart,
      'dateEnd': instance.dateEnd,
      'milestoneDetails': instance.milestoneDetails,
      'eventContent': instance.eventContent,
    };
