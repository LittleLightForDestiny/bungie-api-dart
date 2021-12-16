import 'package:json_annotation/json_annotation.dart';

import 'user_info_card.dart';

part 'user_search_response_detail.g.dart';

@JsonSerializable()
class UserSearchResponseDetail{
	
	UserSearchResponseDetail();

	factory UserSearchResponseDetail.fromJson(Map<String, dynamic> json) {
		return _$UserSearchResponseDetailFromJson(json);
	}

	@JsonKey(name:'bungieGlobalDisplayName')
	String? bungieGlobalDisplayName;
	@JsonKey(name:'bungieGlobalDisplayNameCode')
	int? bungieGlobalDisplayNameCode;
	@JsonKey(name:'bungieNetMembershipId')
	String? bungieNetMembershipId;
	@JsonKey(name:'destinyMemberships')
	List<UserInfoCard>? destinyMemberships;

	
	
	Map<String, dynamic> toJson() => _$UserSearchResponseDetailToJson(this);
}