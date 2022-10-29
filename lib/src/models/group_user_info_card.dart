import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/bungie_membership_type.dart';

part 'group_user_info_card.g.dart';

@JsonSerializable()
class GroupUserInfoCard{	
	GroupUserInfoCard();

	
	/// This will be the display name the clan server last saw the user as. If the account is an active cross save override, this will be the display name to use. Otherwise, this will match the displayName property.
	@JsonKey(name:'LastSeenDisplayName')
	String? lastSeenDisplayName;
	
	/// The platform of the LastSeenDisplayName
	@JsonKey(name:'LastSeenDisplayNameType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? lastSeenDisplayNameType;
	
	/// A platform specific additional display name - ex: psn Real Name, bnet Unique Name, etc.
	@JsonKey(name:'supplementalDisplayName')
	String? supplementalDisplayName;
	
	/// URL the Icon if available.
	@JsonKey(name:'iconPath')
	String? iconPath;
	
	/// If there is a cross save override in effect, this value will tell you the type that is overridding this one.
	@JsonKey(name:'crossSaveOverride',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? crossSaveOverride;
	
	/// The list of Membership Types indicating the platforms on which this Membership can be used.
	///  Not in Cross Save = its original membership type. Cross Save Primary = Any membership types it is overridding, and its original membership type Cross Save Overridden = Empty list
	@JsonKey(name:'applicableMembershipTypes')
	List<BungieMembershipType>? applicableMembershipTypes;
	
	/// If True, this is a public user membership.
	@JsonKey(name:'isPublic')
	bool? isPublic;
	
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

	factory GroupUserInfoCard.fromJson(Map<String, dynamic> json) {
		return _$GroupUserInfoCardFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupUserInfoCardToJson(this);

	static Future<GroupUserInfoCard> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupUserInfoCard>((json)=>GroupUserInfoCard.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}