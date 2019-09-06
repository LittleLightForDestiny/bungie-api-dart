
import 'package:json_annotation/json_annotation.dart';
part 'user_info_card.g.dart';

/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
@JsonSerializable()
class UserInfoCard {

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
	UserInfoCard();

	factory UserInfoCard.fromJson(Map<String, dynamic> json) => _$UserInfoCardFromJson(json);
	
	Map<String, dynamic> toJson() => _$UserInfoCardToJson(this);
}
