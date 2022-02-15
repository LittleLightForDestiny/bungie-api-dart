// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingEntry _$TrendingEntryFromJson(Map<String, dynamic> json) =>
    TrendingEntry()
      ..weight = (json['weight'] as num?)?.toDouble()
      ..isFeatured = json['isFeatured'] as bool?
      ..identifier = json['identifier'] as String?
      ..entityType = decodeTrendingEntryType(json['entityType'])
      ..displayName = json['displayName'] as String?
      ..tagline = json['tagline'] as String?
      ..image = json['image'] as String?
      ..startDate = json['startDate'] as String?
      ..endDate = json['endDate'] as String?
      ..link = json['link'] as String?
      ..webmVideo = json['webmVideo'] as String?
      ..mp4Video = json['mp4Video'] as String?
      ..featureImage = json['featureImage'] as String?
      ..items = (json['items'] as List<dynamic>?)
          ?.map((e) => TrendingEntry.fromJson(e as Map<String, dynamic>))
          .toList()
      ..creationDate = json['creationDate'] as String?;

Map<String, dynamic> _$TrendingEntryToJson(TrendingEntry instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'isFeatured': instance.isFeatured,
      'identifier': instance.identifier,
      'entityType': encodeTrendingEntryType(instance.entityType),
      'displayName': instance.displayName,
      'tagline': instance.tagline,
      'image': instance.image,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'link': instance.link,
      'webmVideo': instance.webmVideo,
      'mp4Video': instance.mp4Video,
      'featureImage': instance.featureImage,
      'items': instance.items,
      'creationDate': instance.creationDate,
    };
