import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'cross_save_user_membership.g.dart';

/// Very basic info about a user as returned by the Account server, but including CrossSave information. Do NOT use as a request contract.
@JsonSerializable()
class CrossSaveUserMembership{	
	CrossSaveUserMembership();

	factory CrossSaveUserMembership.fromJson(Map<String, dynamic> json) {
		return _$CrossSaveUserMembershipFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$CrossSaveUserMembershipToJson(this);
	
	/// If there is a cross save override in effect, this value will tell you the type that is overridding this one.
	@JsonKey(name:'crossSaveOverride',unknownEnumValue:BungieMembershipType.ProtectedInvalidEnumValue)
	BungieMembershipType? crossSaveOverride;
	
	/// The list of Membership Types indicating the platforms on which this Membership can be used.
	///  Not in Cross Save = its original membership type. Cross Save Primary = Any membership types it is overridding, and its original membership type Cross Save Overridden = Empty list
	@JsonKey(name:'applicableMembershipTypes')
	List<BungieMembershipType>? applicableMembershipTypes;
	
	/// If True, this is a public user membership.
	@JsonKey(name:'isPublic')
	bool? isPublic;
	
	/// Type of the membership. Not necessarily the native type.
	@JsonKey(name:'membershipType',unknownEnumValue:BungieMembershipType.ProtectedInvalidEnumValue)
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
}