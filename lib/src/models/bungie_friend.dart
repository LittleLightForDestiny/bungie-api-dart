import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/bungie_membership_type.dart';
import '../enums/presence_status.dart';
import '../enums/presence_online_state_flags.dart';
import '../enums/friend_relationship_state.dart';
import 'general_user.dart';

part 'bungie_friend.g.dart';

@JsonSerializable()
class BungieFriend{	
	BungieFriend();

	
	@JsonKey(name:'lastSeenAsMembershipId')
	String? lastSeenAsMembershipId;
	
	@JsonKey(name:'lastSeenAsBungieMembershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? lastSeenAsBungieMembershipType;
	
	@JsonKey(name:'bungieGlobalDisplayName')
	String? bungieGlobalDisplayName;
	
	@JsonKey(name:'bungieGlobalDisplayNameCode')
	int? bungieGlobalDisplayNameCode;
	
	@JsonKey(name:'onlineStatus',fromJson:decodePresenceStatus,toJson:encodePresenceStatus)
	PresenceStatus? onlineStatus;
	
	@JsonKey(name:'onlineTitle')
	PresenceOnlineStateFlags? onlineTitle;
	
	@JsonKey(name:'relationship',fromJson:decodeFriendRelationshipState,toJson:encodeFriendRelationshipState)
	FriendRelationshipState? relationship;
	
	@JsonKey(name:'bungieNetUser')
	GeneralUser? bungieNetUser;

	factory BungieFriend.fromJson(Map<String, dynamic> json) {
		return _$BungieFriendFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$BungieFriendToJson(this);

	static Future<BungieFriend> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, BungieFriend>((json)=>BungieFriend.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}