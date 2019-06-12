// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destiny_milestone_content_item_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DestinyMilestoneContentItemCategory
    _$DestinyMilestoneContentItemCategoryFromJson(Map<String, dynamic> json) {
  return DestinyMilestoneContentItemCategory()
    ..title = json['title'] as String
    ..itemHashes = (json['itemHashes'] as List)?.map((e) => e as int)?.toList();
}

Map<String, dynamic> _$DestinyMilestoneContentItemCategoryToJson(
        DestinyMilestoneContentItemCategory instance) =>
    <String, dynamic>{
      'title': instance.title,
      'itemHashes': instance.itemHashes
    };
