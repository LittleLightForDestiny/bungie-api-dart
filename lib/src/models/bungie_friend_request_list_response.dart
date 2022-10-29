import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'bungie_friend.dart';

part 'bungie_friend_request_list_response.g.dart';

@JsonSerializable()
class BungieFriendRequestListResponse{	
	BungieFriendRequestListResponse();

	
	@JsonKey(name:'incomingRequests')
	List<BungieFriend>? incomingRequests;
	
	@JsonKey(name:'outgoingRequests')
	List<BungieFriend>? outgoingRequests;

	factory BungieFriendRequestListResponse.fromJson(Map<String, dynamic> json) {
		return _$BungieFriendRequestListResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$BungieFriendRequestListResponseToJson(this);

	static Future<BungieFriendRequestListResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, BungieFriendRequestListResponse>((json)=>BungieFriendRequestListResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}