// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bungie_friend_request_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BungieFriendRequestListResponse _$BungieFriendRequestListResponseFromJson(
  Map<String, dynamic> json,
) =>
    BungieFriendRequestListResponse()
      ..incomingRequests =
          (json['incomingRequests'] as List<dynamic>?)
              ?.map((e) => BungieFriend.fromJson(e as Map<String, dynamic>))
              .toList()
      ..outgoingRequests =
          (json['outgoingRequests'] as List<dynamic>?)
              ?.map((e) => BungieFriend.fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$BungieFriendRequestListResponseToJson(
  BungieFriendRequestListResponse instance,
) => <String, dynamic>{
  'incomingRequests':
      instance.incomingRequests?.map((e) => e.toJson()).toList(),
  'outgoingRequests':
      instance.outgoingRequests?.map((e) => e.toJson()).toList(),
};
