// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostResponse _$PostResponseFromJson(Map<String, dynamic> json) => PostResponse()
  ..lastReplyTimestamp = json['lastReplyTimestamp'] as String?
  ..isPinned = json['IsPinned'] as bool?
  ..urlMediaType = decodeForumMediaType(json['urlMediaType'])
  ..thumbnail = json['thumbnail'] as String?
  ..popularity = decodeForumPostPopularity(json['popularity'])
  ..isActive = json['isActive'] as bool?
  ..isAnnouncement = json['isAnnouncement'] as bool?
  ..userRating = json['userRating'] as int?
  ..userHasRated = json['userHasRated'] as bool?
  ..userHasMutedPost = json['userHasMutedPost'] as bool?
  ..latestReplyPostId = json['latestReplyPostId'] as String?
  ..latestReplyAuthorId = json['latestReplyAuthorId'] as String?
  ..ignoreStatus = json['ignoreStatus'] == null
      ? null
      : IgnoreResponse.fromJson(json['ignoreStatus'] as Map<String, dynamic>)
  ..locale = json['locale'] as String?;

Map<String, dynamic> _$PostResponseToJson(PostResponse instance) =>
    <String, dynamic>{
      'lastReplyTimestamp': instance.lastReplyTimestamp,
      'IsPinned': instance.isPinned,
      'urlMediaType': encodeForumMediaType(instance.urlMediaType),
      'thumbnail': instance.thumbnail,
      'popularity': encodeForumPostPopularity(instance.popularity),
      'isActive': instance.isActive,
      'isAnnouncement': instance.isAnnouncement,
      'userRating': instance.userRating,
      'userHasRated': instance.userHasRated,
      'userHasMutedPost': instance.userHasMutedPost,
      'latestReplyPostId': instance.latestReplyPostId,
      'latestReplyAuthorId': instance.latestReplyAuthorId,
      'ignoreStatus': instance.ignoreStatus?.toJson(),
      'locale': instance.locale,
    };
