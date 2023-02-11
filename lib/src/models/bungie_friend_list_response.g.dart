// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bungie_friend_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BungieFriendListResponse _$BungieFriendListResponseFromJson(
        Map<String, dynamic> json) =>
    BungieFriendListResponse()
      ..friends = (json['friends'] as List<dynamic>?)
          ?.map((e) => BungieFriend.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$BungieFriendListResponseToJson(
        BungieFriendListResponse instance) =>
    <String, dynamic>{
      'friends': instance.friends?.map((e) => e.toJson()).toList(),
    };
