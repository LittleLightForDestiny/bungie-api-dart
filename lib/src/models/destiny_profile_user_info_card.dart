
import 'package:json_annotation/json_annotation.dart';
part 'destiny_profile_user_info_card.g.dart';

@JsonSerializable()
class DestinyProfileUserInfoCard {

	@JsonKey(name:'dateLastPlayed')
	String dateLastPlayed;

	/// A platform specific additional display name - ex: psn Real Name, bnet Unique Name, etc.
	@JsonKey(name:'supplementalDisplayName')
	String supplementalDisplayName;

	/// URL the Icon if available.
	@JsonKey(name:'iconPath')
	String iconPath;

	/// Type of the membership.
	@JsonKey(name:'membershipType')
	int membershipType;

	/// Membership ID as they user is known in the Accounts service
	@JsonKey(name:'membershipId')
	String membershipId;

	/// Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API.
	@JsonKey(name:'displayName')
	String displayName;
	DestinyProfileUserInfoCard();

	factory DestinyProfileUserInfoCard.fromJson(Map<String, dynamic> json) => _$DestinyProfileUserInfoCardFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyProfileUserInfoCardToJson(this);
}
