import 'package:json_annotation/json_annotation.dart';

import 'bungie_friend.dart';

part 'bungie_friend_list_response.g.dart';

@JsonSerializable()
class BungieFriendListResponse{	
	BungieFriendListResponse();

	factory BungieFriendListResponse.fromJson(Map<String, dynamic> json) {
		return _$BungieFriendListResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$BungieFriendListResponseToJson(this);
	
	@JsonKey(name:'friends')
	List<BungieFriend>? friends;
}