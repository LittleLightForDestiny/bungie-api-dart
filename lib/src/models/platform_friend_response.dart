import 'package:json_annotation/json_annotation.dart';

import 'platform_friend.dart';

part 'platform_friend_response.g.dart';

@JsonSerializable()
class PlatformFriendResponse{	
	PlatformFriendResponse();

	factory PlatformFriendResponse.fromJson(Map<String, dynamic> json) {
		return _$PlatformFriendResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$PlatformFriendResponseToJson(this);
	
	@JsonKey(name:'itemsPerPage')
	int? itemsPerPage;
	
	@JsonKey(name:'currentPage')
	int? currentPage;
	
	@JsonKey(name:'hasMore')
	bool? hasMore;
	
	@JsonKey(name:'platformFriends')
	List<PlatformFriend>? platformFriends;
}