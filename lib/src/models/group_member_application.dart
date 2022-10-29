import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/group_application_resolve_state.dart';
import 'group_user_info_card.dart';
import 'user_info_card.dart';

part 'group_member_application.g.dart';

@JsonSerializable()
class GroupMemberApplication{	
	GroupMemberApplication();

	
	@JsonKey(name:'groupId')
	String? groupId;
	
	@JsonKey(name:'creationDate')
	String? creationDate;
	
	@JsonKey(name:'resolveState',fromJson:decodeGroupApplicationResolveState,toJson:encodeGroupApplicationResolveState)
	GroupApplicationResolveState? resolveState;
	
	@JsonKey(name:'resolveDate')
	String? resolveDate;
	
	@JsonKey(name:'resolvedByMembershipId')
	String? resolvedByMembershipId;
	
	@JsonKey(name:'requestMessage')
	String? requestMessage;
	
	@JsonKey(name:'resolveMessage')
	String? resolveMessage;
	
	@JsonKey(name:'destinyUserInfo')
	GroupUserInfoCard? destinyUserInfo;
	
	/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
	@JsonKey(name:'bungieNetUserInfo')
	UserInfoCard? bungieNetUserInfo;

	factory GroupMemberApplication.fromJson(Map<String, dynamic> json) {
		return _$GroupMemberApplicationFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupMemberApplicationToJson(this);

	static Future<GroupMemberApplication> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupMemberApplication>((json)=>GroupMemberApplication.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}