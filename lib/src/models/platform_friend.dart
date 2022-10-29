import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/platform_friend_type.dart';

part 'platform_friend.g.dart';

@JsonSerializable()
class PlatformFriend{	
	PlatformFriend();

	
	@JsonKey(name:'platformDisplayName')
	String? platformDisplayName;
	
	@JsonKey(name:'friendPlatform',fromJson:decodePlatformFriendType,toJson:encodePlatformFriendType)
	PlatformFriendType? friendPlatform;
	
	@JsonKey(name:'destinyMembershipId')
	String? destinyMembershipId;
	
	@JsonKey(name:'destinyMembershipType')
	int? destinyMembershipType;
	
	@JsonKey(name:'bungieNetMembershipId')
	String? bungieNetMembershipId;
	
	@JsonKey(name:'bungieGlobalDisplayName')
	String? bungieGlobalDisplayName;
	
	@JsonKey(name:'bungieGlobalDisplayNameCode')
	int? bungieGlobalDisplayNameCode;

	factory PlatformFriend.fromJson(Map<String, dynamic> json) {
		return _$PlatformFriendFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$PlatformFriendToJson(this);

	static Future<PlatformFriend> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, PlatformFriend>((json)=>PlatformFriend.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}