import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'user_membership.g.dart';

/// Very basic info about a user as returned by the Account server.
@JsonSerializable()
class UserMembership{
	
	UserMembership();

	factory UserMembership.fromJson(Map<String, dynamic> json) {
		try{
			return _$UserMembershipFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Type of the membership. Not necessarily the native type.
	@JsonKey(name:'membershipType',unknownEnumValue:BungieMembershipType.ProtectedInvalidEnumValue)
	BungieMembershipType membershipType;
	/// Membership ID as they user is known in the Accounts service
	@JsonKey(name:'membershipId')
	String membershipId;
	/// Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API.
	@JsonKey(name:'displayName')
	String displayName;

	
	
	Map<String, dynamic> toJson() => _$UserMembershipToJson(this);
}