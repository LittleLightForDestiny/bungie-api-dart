
import 'package:json_annotation/json_annotation.dart';
part 'fireteam_user_info_card.g.dart';

@JsonSerializable()
class FireteamUserInfoCard{
	
	@JsonKey(name:'FireteamDisplayName')
	String fireteamDisplayName;
	
	@JsonKey(name:'FireteamMembershipType')
	int fireteamMembershipType;
	
	@JsonKey(name:'FireteamPlatformProfileUrl')
	String fireteamPlatformProfileUrl;
	
	@JsonKey(name:'FireteamPlatformUniqueIdentifier')
	String fireteamPlatformUniqueIdentifier;
	
	/// A platform specific additional display name - ex: psn Real Name, bnet Unique Name, etc.
	@JsonKey(name:'supplementalDisplayName')
	String supplementalDisplayName;
	
	/// URL the Icon if available.
	@JsonKey(name:'iconPath')
	String iconPath;
	
	/// If there is a cross save override in effect, this value will tell you the type that is overridding this one.
	@JsonKey(name:'crossSaveOverride')
	int crossSaveOverride;
	
	/// The list of Membership Types indicating the platforms on which this Membership can be used.
	///  Not in Cross Save &#x3D; its original membership type. Cross Save Primary &#x3D; Any membership types it is overridding, and its original membership type Cross Save Overridden &#x3D; Empty list
	@JsonKey(name:'applicableMembershipTypes')
	List<int> applicableMembershipTypes;
	
	/// If True, this is a public user membership.
	@JsonKey(name:'isPublic')
	bool isPublic;
	
	/// Type of the membership. Not necessarily the native type.
	@JsonKey(name:'membershipType')
	int membershipType;
	
	/// Membership ID as they user is known in the Accounts service
	@JsonKey(name:'membershipId')
	String membershipId;
	
	/// Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API.
	@JsonKey(name:'displayName')
	String displayName;
	FireteamUserInfoCard();

	factory FireteamUserInfoCard.fromJson(Map<String, dynamic> json) => _$FireteamUserInfoCardFromJson(json);
	
	Map<String, dynamic> toJson() => _$FireteamUserInfoCardToJson(this);
}