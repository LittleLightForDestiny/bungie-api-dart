// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_entry_community_creation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingEntryCommunityCreation _$TrendingEntryCommunityCreationFromJson(
        Map<String, dynamic> json) =>
    TrendingEntryCommunityCreation()
      ..media = json['media'] as String?
      ..title = json['title'] as String?
      ..author = json['author'] as String?
      ..authorMembershipId = json['authorMembershipId'] as String?
      ..postId = json['postId'] as String?
      ..body = json['body'] as String?
      ..upvotes = (json['upvotes'] as num?)?.toInt();

Map<String, dynamic> _$TrendingEntryCommunityCreationToJson(
        TrendingEntryCommunityCreation instance) =>
    <String, dynamic>{
      'media': instance.media,
      'title': instance.title,
      'author': instance.author,
      'authorMembershipId': instance.authorMembershipId,
      'postId': instance.postId,
      'body': instance.body,
      'upvotes': instance.upvotes,
    };
