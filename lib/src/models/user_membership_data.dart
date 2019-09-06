import 'user_info_card.dart';
import 'general_user.dart';

import 'package:json_annotation/json_annotation.dart';
part 'user_membership_data.g.dart';

@JsonSerializable()
class UserMembershipData {

	/// this allows you to see destiny memberships that are visible and linked to this account (regardless of whether or not they have characters on the world server)
	@JsonKey(name:'destinyMemberships')
	List<UserInfoCard> destinyMemberships;

	@JsonKey(name:'bungieNetUser')
	GeneralUser bungieNetUser;
	UserMembershipData();

	factory UserMembershipData.fromJson(Map<String, dynamic> json) => _$UserMembershipDataFromJson(json);
	
	Map<String, dynamic> toJson() => _$UserMembershipDataToJson(this);
}
