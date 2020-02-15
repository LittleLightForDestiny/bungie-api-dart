import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'hard_linked_user_membership.g.dart';

@JsonSerializable()
class HardLinkedUserMembership{
	
	HardLinkedUserMembership();

	factory HardLinkedUserMembership.fromJson(Map<String, dynamic> json) {
		try{
			return _$HardLinkedUserMembershipFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'membershipType',unknownEnumValue:BungieMembershipType.ProtectedInvalidEnumValue)
	BungieMembershipType membershipType;
	@JsonKey(name:'membershipId')
	String membershipId;
	@JsonKey(name:'CrossSaveOverriddenType',unknownEnumValue:BungieMembershipType.ProtectedInvalidEnumValue)
	BungieMembershipType crossSaveOverriddenType;
	@JsonKey(name:'CrossSaveOverriddenMembershipId')
	String crossSaveOverriddenMembershipId;

	
	
	Map<String, dynamic> toJson() => _$HardLinkedUserMembershipToJson(this);
}