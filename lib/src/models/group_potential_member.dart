import 'package:json_annotation/json_annotation.dart';

import '../enums/group_potential_member_status.dart';
import 'group_user_info_card.dart';
import 'user_info_card.dart';

part 'group_potential_member.g.dart';

@JsonSerializable()
class GroupPotentialMember{	
	GroupPotentialMember();

	factory GroupPotentialMember.fromJson(Map<String, dynamic> json) {
		return _$GroupPotentialMemberFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupPotentialMemberToJson(this);
	
	@JsonKey(name:'potentialStatus',unknownEnumValue:GroupPotentialMemberStatus.ProtectedInvalidEnumValue)
	GroupPotentialMemberStatus? potentialStatus;
	
	@JsonKey(name:'groupId')
	String? groupId;
	
	@JsonKey(name:'destinyUserInfo')
	GroupUserInfoCard? destinyUserInfo;
	
	/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
	@JsonKey(name:'bungieNetUserInfo')
	UserInfoCard? bungieNetUserInfo;
	
	@JsonKey(name:'joinDate')
	String? joinDate;
}