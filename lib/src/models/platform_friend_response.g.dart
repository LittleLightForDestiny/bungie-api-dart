// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_friend_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlatformFriendResponse _$PlatformFriendResponseFromJson(
        Map<String, dynamic> json) =>
    PlatformFriendResponse()
      ..itemsPerPage = json['itemsPerPage'] as int?
      ..currentPage = json['currentPage'] as int?
      ..hasMore = json['hasMore'] as bool?
      ..platformFriends = (json['platformFriends'] as List<dynamic>?)
          ?.map((e) => PlatformFriend.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$PlatformFriendResponseToJson(
        PlatformFriendResponse instance) =>
    <String, dynamic>{
      'itemsPerPage': instance.itemsPerPage,
      'currentPage': instance.currentPage,
      'hasMore': instance.hasMore,
      'platformFriends': instance.platformFriends,
    };
