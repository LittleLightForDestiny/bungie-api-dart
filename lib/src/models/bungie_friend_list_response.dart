import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'bungie_friend.dart';

part 'bungie_friend_list_response.g.dart';

@JsonSerializable()
class BungieFriendListResponse{	
	BungieFriendListResponse();

	
	@JsonKey(name:'friends')
	List<BungieFriend>? friends;

	factory BungieFriendListResponse.fromJson(Map<String, dynamic> json) {
		return _$BungieFriendListResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$BungieFriendListResponseToJson(this);

	static Future<BungieFriendListResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, BungieFriendListResponse>((json)=>BungieFriendListResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}