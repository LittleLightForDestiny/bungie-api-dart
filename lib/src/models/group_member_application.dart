import 'user_info_card.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_member_application.g.dart';

@JsonSerializable()
class GroupMemberApplication {

	@JsonKey(name:'groupId')
	String groupId;

	@JsonKey(name:'creationDate')
	String creationDate;

	@JsonKey(name:'resolveState')
	int resolveState;

	@JsonKey(name:'resolveDate')
	String resolveDate;

	@JsonKey(name:'resolvedByMembershipId')
	String resolvedByMembershipId;

	@JsonKey(name:'requestMessage')
	String requestMessage;

	@JsonKey(name:'resolveMessage')
	String resolveMessage;

	/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
	@JsonKey(name:'destinyUserInfo')
	UserInfoCard destinyUserInfo;

	/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
	@JsonKey(name:'bungieNetUserInfo')
	UserInfoCard bungieNetUserInfo;
	GroupMemberApplication();

	factory GroupMemberApplication.fromJson(Map<String, dynamic> json) => _$GroupMemberApplicationFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupMemberApplicationToJson(this);
}
