import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/bungie_membership_type.dart';

part 'hard_linked_user_membership.g.dart';

@JsonSerializable()
class HardLinkedUserMembership{	
	HardLinkedUserMembership();

	
	@JsonKey(name:'membershipType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? membershipType;
	
	@JsonKey(name:'membershipId')
	String? membershipId;
	
	@JsonKey(name:'CrossSaveOverriddenType',fromJson:decodeBungieMembershipType,toJson:encodeBungieMembershipType)
	BungieMembershipType? crossSaveOverriddenType;
	
	@JsonKey(name:'CrossSaveOverriddenMembershipId')
	String? crossSaveOverriddenMembershipId;

	factory HardLinkedUserMembership.fromJson(Map<String, dynamic> json) {
		return _$HardLinkedUserMembershipFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$HardLinkedUserMembershipToJson(this);

	static Future<HardLinkedUserMembership> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, HardLinkedUserMembership>((json)=>HardLinkedUserMembership.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}