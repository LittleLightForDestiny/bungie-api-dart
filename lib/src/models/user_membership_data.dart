import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'group_user_info_card.dart';
import 'general_user.dart';

part 'user_membership_data.g.dart';

@JsonSerializable()
class UserMembershipData{	
	UserMembershipData();

	
	/// this allows you to see destiny memberships that are visible and linked to this account (regardless of whether or not they have characters on the world server)
	@JsonKey(name:'destinyMemberships')
	List<GroupUserInfoCard>? destinyMemberships;
	
	/// If this property is populated, it will have the membership ID of the account considered to be "primary" in this user's cross save relationship.
	///  If null, this user has no cross save relationship, nor primary account.
	@JsonKey(name:'primaryMembershipId')
	String? primaryMembershipId;
	
	@JsonKey(name:'bungieNetUser')
	GeneralUser? bungieNetUser;

	factory UserMembershipData.fromJson(Map<String, dynamic> json) {
		return _$UserMembershipDataFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$UserMembershipDataToJson(this);

	static Future<UserMembershipData> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, UserMembershipData>((json)=>UserMembershipData.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}