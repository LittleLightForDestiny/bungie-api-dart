import 'user_info_card.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_user_base.g.dart';

@JsonSerializable()
class GroupUserBase {

	@JsonKey(name:'groupId')
	String groupId;

	/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
	@JsonKey(name:'destinyUserInfo')
	UserInfoCard destinyUserInfo;

	/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
	@JsonKey(name:'bungieNetUserInfo')
	UserInfoCard bungieNetUserInfo;

	@JsonKey(name:'joinDate')
	String joinDate;
	GroupUserBase();

	factory GroupUserBase.fromJson(Map<String, dynamic> json) => _$GroupUserBaseFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupUserBaseToJson(this);
}
