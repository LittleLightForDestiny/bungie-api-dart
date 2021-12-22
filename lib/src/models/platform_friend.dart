import 'package:json_annotation/json_annotation.dart';

import '../enums/platform_friend_type.dart';

part 'platform_friend.g.dart';

@JsonSerializable()
class PlatformFriend{
	
	PlatformFriend();

	factory PlatformFriend.fromJson(Map<String, dynamic> json) {
		return _$PlatformFriendFromJson(json);
	}

	@JsonKey(name:'platformDisplayName')
	String? platformDisplayName;
	@JsonKey(name:'friendPlatform',unknownEnumValue:PlatformFriendType.ProtectedInvalidEnumValue)
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

	
	
	Map<String, dynamic> toJson() => _$PlatformFriendToJson(this);
}