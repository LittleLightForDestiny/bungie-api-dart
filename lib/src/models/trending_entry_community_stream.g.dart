// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_entry_community_stream.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingEntryCommunityStream _$TrendingEntryCommunityStreamFromJson(
    Map<String, dynamic> json) {
  return TrendingEntryCommunityStream()
    ..image = json['image'] as String
    ..title = json['title'] as String
    ..partnershipIdentifier = json['partnershipIdentifier'] as String
    ..partnershipType = json['partnershipType'] as int;
}

Map<String, dynamic> _$TrendingEntryCommunityStreamToJson(
        TrendingEntryCommunityStream instance) =>
    <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'partnershipIdentifier': instance.partnershipIdentifier,
      'partnershipType': instance.partnershipType
    };
