import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';
import '../enums/presence_status.dart';
import '../enums/presence_online_state_flags.dart';
import '../enums/friend_relationship_state.dart';
import 'general_user.dart';

part 'bungie_friend.g.dart';

@JsonSerializable()
class BungieFriend{	
	BungieFriend();

	factory BungieFriend.fromJson(Map<String, dynamic> json) {
		return _$BungieFriendFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$BungieFriendToJson(this);
	
	@JsonKey(name:'lastSeenAsMembershipId')
	String? lastSeenAsMembershipId;
	
	@JsonKey(name:'lastSeenAsBungieMembershipType',unknownEnumValue:BungieMembershipType.ProtectedInvalidEnumValue)
	BungieMembershipType? lastSeenAsBungieMembershipType;
	
	@JsonKey(name:'bungieGlobalDisplayName')
	String? bungieGlobalDisplayName;
	
	@JsonKey(name:'bungieGlobalDisplayNameCode')
	int? bungieGlobalDisplayNameCode;
	
	@JsonKey(name:'onlineStatus',unknownEnumValue:PresenceStatus.ProtectedInvalidEnumValue)
	PresenceStatus? onlineStatus;
	
	@JsonKey(name:'onlineTitle')
	PresenceOnlineStateFlags? onlineTitle;
	
	@JsonKey(name:'relationship',unknownEnumValue:FriendRelationshipState.ProtectedInvalidEnumValue)
	FriendRelationshipState? relationship;
	
	@JsonKey(name:'bungieNetUser')
	GeneralUser? bungieNetUser;
}