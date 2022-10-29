import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'platform_friend.dart';

part 'platform_friend_response.g.dart';

@JsonSerializable()
class PlatformFriendResponse{	
	PlatformFriendResponse();

	
	@JsonKey(name:'itemsPerPage')
	int? itemsPerPage;
	
	@JsonKey(name:'currentPage')
	int? currentPage;
	
	@JsonKey(name:'hasMore')
	bool? hasMore;
	
	@JsonKey(name:'platformFriends')
	List<PlatformFriend>? platformFriends;

	factory PlatformFriendResponse.fromJson(Map<String, dynamic> json) {
		return _$PlatformFriendResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$PlatformFriendResponseToJson(this);

	static Future<PlatformFriendResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, PlatformFriendResponse>((json)=>PlatformFriendResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}