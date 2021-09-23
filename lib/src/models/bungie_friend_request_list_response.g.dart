// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bungie_friend_request_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BungieFriendRequestListResponse _$BungieFriendRequestListResponseFromJson(
    Map<String, dynamic> json) {
  return BungieFriendRequestListResponse()
    ..incomingRequests = (json['incomingRequests'] as List<dynamic>?)
        ?.map((e) => BungieFriend.fromJson(e as Map<String, dynamic>))
        .toList()
    ..outgoingRequests = (json['outgoingRequests'] as List<dynamic>?)
        ?.map((e) => BungieFriend.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$BungieFriendRequestListResponseToJson(
        BungieFriendRequestListResponse instance) =>
    <String, dynamic>{
      'incomingRequests': instance.incomingRequests,
      'outgoingRequests': instance.outgoingRequests,
    };
