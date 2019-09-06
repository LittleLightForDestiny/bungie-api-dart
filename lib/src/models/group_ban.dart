import 'user_info_card.dart';

import 'package:json_annotation/json_annotation.dart';
part 'group_ban.g.dart';

@JsonSerializable()
class GroupBan {

	@JsonKey(name:'groupId')
	String groupId;

	/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
	@JsonKey(name:'lastModifiedBy')
	UserInfoCard lastModifiedBy;

	/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
	@JsonKey(name:'createdBy')
	UserInfoCard createdBy;

	@JsonKey(name:'dateBanned')
	String dateBanned;

	@JsonKey(name:'dateExpires')
	String dateExpires;

	@JsonKey(name:'comment')
	String comment;

	/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
	@JsonKey(name:'bungieNetUserInfo')
	UserInfoCard bungieNetUserInfo;

	/// This contract supplies basic information commonly used to display a minimal amount of information about a user. Take care to not add more properties here unless the property applies in all (or at least the majority) of the situations where UserInfoCard is used. Avoid adding game specific or platform specific details here. In cases where UserInfoCard is a subset of the data needed in a contract, use UserInfoCard as a property of other contracts.
	@JsonKey(name:'destinyUserInfo')
	UserInfoCard destinyUserInfo;
	GroupBan();

	factory GroupBan.fromJson(Map<String, dynamic> json) => _$GroupBanFromJson(json);
	
	Map<String, dynamic> toJson() => _$GroupBanToJson(this);
}
