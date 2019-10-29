
import 'package:json_annotation/json_annotation.dart';
part 'hard_linked_user_membership.g.dart';

@JsonSerializable()
class HardLinkedUserMembership{
	
	@JsonKey(name:'membershipType')
	int membershipType;
	
	@JsonKey(name:'membershipId')
	String membershipId;
	
	@JsonKey(name:'CrossSaveOverriddenType')
	int crossSaveOverriddenType;
	
	@JsonKey(name:'CrossSaveOverriddenMembershipId')
	String crossSaveOverriddenMembershipId;
	HardLinkedUserMembership();

	factory HardLinkedUserMembership.fromJson(Map<String, dynamic> json) => _$HardLinkedUserMembershipFromJson(json);
	
	Map<String, dynamic> toJson() => _$HardLinkedUserMembershipToJson(this);
}