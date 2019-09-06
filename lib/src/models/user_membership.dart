
import 'package:json_annotation/json_annotation.dart';
part 'user_membership.g.dart';

/// Very basic info about a user as returned by the Account server.
@JsonSerializable()
class UserMembership {

	/// Type of the membership.
	@JsonKey(name:'membershipType')
	int membershipType;

	/// Membership ID as they user is known in the Accounts service
	@JsonKey(name:'membershipId')
	String membershipId;

	/// Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API.
	@JsonKey(name:'displayName')
	String displayName;
	UserMembership();

	factory UserMembership.fromJson(Map<String, dynamic> json) => _$UserMembershipFromJson(json);
	
	Map<String, dynamic> toJson() => _$UserMembershipToJson(this);
}
