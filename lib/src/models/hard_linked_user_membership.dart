import 'package:json_annotation/json_annotation.dart';

import '../enums/bungie_membership_type.dart';

part 'hard_linked_user_membership.g.dart';

@JsonSerializable()
class HardLinkedUserMembership{
	
	HardLinkedUserMembership();

	factory HardLinkedUserMembership.fromJson(Map<String, dynamic> json) => _$HardLinkedUserMembershipFromJson(json);

	@JsonKey(name:'membershipType',unknownEnumValue:BungieMembershipType.None)
	BungieMembershipType membershipType;
	@JsonKey(name:'membershipId')
	String membershipId;
	@JsonKey(name:'CrossSaveOverriddenType',unknownEnumValue:BungieMembershipType.None)
	BungieMembershipType crossSaveOverriddenType;
	@JsonKey(name:'CrossSaveOverriddenMembershipId')
	String crossSaveOverriddenMembershipId;

	
	
	Map<String, dynamic> toJson() => _$HardLinkedUserMembershipToJson(this);
}