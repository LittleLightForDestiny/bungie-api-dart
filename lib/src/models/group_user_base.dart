import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'group_user_info_card.dart';
import 'user_info_card.dart';

part 'group_user_base.g.dart';

@JsonSerializable()
class GroupUserBase{	
	GroupUserBase();

	
	@JsonKey(name:'groupId')
	String? groupId;
	
	@JsonKey(name:'destinyUserInfo')
	GroupUserInfoCard? destinyUserInfo;
	
	/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
	@JsonKey(name:'bungieNetUserInfo')
	UserInfoCard? bungieNetUserInfo;
	
	@JsonKey(name:'joinDate')
	String? joinDate;

	factory GroupUserBase.fromJson(Map<String, dynamic> json) {
		return _$GroupUserBaseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$GroupUserBaseToJson(this);

	static Future<GroupUserBase> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, GroupUserBase>((json)=>GroupUserBase.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}