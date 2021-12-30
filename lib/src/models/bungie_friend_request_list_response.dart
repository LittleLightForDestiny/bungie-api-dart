import 'package:json_annotation/json_annotation.dart';

import 'bungie_friend.dart';

part 'bungie_friend_request_list_response.g.dart';

@JsonSerializable()
class BungieFriendRequestListResponse{	
	BungieFriendRequestListResponse();

	factory BungieFriendRequestListResponse.fromJson(Map<String, dynamic> json) {
		return _$BungieFriendRequestListResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$BungieFriendRequestListResponseToJson(this);
	
	@JsonKey(name:'incomingRequests')
	List<BungieFriend>? incomingRequests;
	
	@JsonKey(name:'outgoingRequests')
	List<BungieFriend>? outgoingRequests;
}