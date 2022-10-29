import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/bungie_membership_type.dart';

part 'user_membership.g.dart';

/// Very basic info about a user as returned by the Account server.
@JsonSerializable()
class UserMembership{	
	UserMembership();

	
	/// Type of the membership. Not necessarily the native type.
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;
	
	/// Membership ID as they user is known in the Accounts service
	@JsonKey(name:'membershipId')
	String? membershipId;
	
	/// Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API.
	@JsonKey(name:'displayName')
	String? displayName;
	
	/// The bungie global display name, if set.
	@JsonKey(name:'bungieGlobalDisplayName')
	String? bungieGlobalDisplayName;
	
	/// The bungie global display name code, if set.
	@JsonKey(name:'bungieGlobalDisplayNameCode')
	int? bungieGlobalDisplayNameCode;

	factory UserMembership.fromJson(Map<String, dynamic> json) {
		return _$UserMembershipFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$UserMembershipToJson(this);

	static Future<UserMembership> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, UserMembership>((json)=>UserMembership.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}