import 'package:json_annotation/json_annotation.dart';

import '../enums/runtime_group_member_type.dart';
import 'group_user_info_card.dart';
import 'user_info_card.dart';

part 'group_member.g.dart';

@JsonSerializable()
class GroupMember{	
	GroupMember();

	factory GroupMember.fromJson(Map<String, dynamic> json) {
		return _$GroupMemberFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupMemberToJson(this);
	
	@JsonKey(name:'memberType',fromJson:decodeRuntimeGroupMemberType,toJson:encodeRuntimeGroupMemberType)
	RuntimeGroupMemberType? memberType;
	
	@JsonKey(name:'isOnline')
	bool? isOnline;
	
	@JsonKey(name:'lastOnlineStatusChange')
	String? lastOnlineStatusChange;
	
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