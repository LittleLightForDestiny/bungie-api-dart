// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneContent _$DestinyMilestoneContentFromJson(
    Map<String, dynamic> json) {
  return DestinyMilestoneContent()
    ..about = json['about'] as String?
    ..status = json['status'] as String?
    ..tips = (json['tips'] as List<dynamic>?)?.map((e) => e as String).toList()
    ..itemCategories = (json['itemCategories'] as List<dynamic>?)
        ?.map((e) => DestinyMilestoneContentItemCategory.fromJson(
            e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$DestinyMilestoneContentToJson(
        DestinyMilestoneContent instance) =>
    <String, dynamic>{
      'about': instance.about,
      'status': instance.status,
      'tips': instance.tips,
      'itemCategories': instance.itemCategories,
    };
