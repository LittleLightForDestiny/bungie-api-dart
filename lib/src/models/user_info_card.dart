import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'user_info_card.g.dart';

/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
@JsonSerializable()
class UserInfoCard{
	
	UserInfoCard();

	factory UserInfoCard.fromJson(Map<String, dynamic> json) => _$UserInfoCardFromJson(json);

	/// A platform specific additional display name - ex: psn Real Name, bnet Unique Name, etc.
	@JsonKey(name:'supplementalDisplayName')
	String supplementalDisplayName;
	/// URL the Icon if available.
	@JsonKey(name:'iconPath')
	String iconPath;
	/// If there is a cross save override in effect, this value will tell you the type that is overridding this one.
	@JsonKey(name:'crossSaveOverride',unknownEnumValue:BungieMembershipType.None)
	BungieMembershipType crossSaveOverride;
	/// The list of Membership Types indicating the platforms on which this Membership can be used.
	///  Not in Cross Save = its original membership type. Cross Save Primary = Any membership types it is overridding, and its original membership type Cross Save Overridden = Empty list
	@JsonKey(name:'applicableMembershipTypes')
	List<BungieMembershipType> applicableMembershipTypes;
	/// If True, this is a public user membership.
	@JsonKey(name:'isPublic')
	bool isPublic;
	/// Type of the membership. Not necessarily the native type.
	@JsonKey(name:'membershipType',unknownEnumValue:BungieMembershipType.None)
	BungieMembershipType membershipType;
	/// Membership ID as they user is known in the Accounts service
	@JsonKey(name:'membershipId')
	String membershipId;
	/// Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API.
	@JsonKey(name:'displayName')
	String displayName;

	
	
	Map<String, dynamic> toJson() => _$UserInfoCardToJson(this);
}