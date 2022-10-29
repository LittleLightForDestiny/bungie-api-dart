import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'user_info_card.dart';

part 'user_search_response_detail.g.dart';

@JsonSerializable()
class UserSearchResponseDetail{	
	UserSearchResponseDetail();

	
	@JsonKey(name:'bungieGlobalDisplayName')
	String? bungieGlobalDisplayName;
	
	@JsonKey(name:'bungieGlobalDisplayNameCode')
	int? bungieGlobalDisplayNameCode;
	
	@JsonKey(name:'bungieNetMembershipId')
	String? bungieNetMembershipId;
	
	@JsonKey(name:'destinyMemberships')
	List<UserInfoCard>? destinyMemberships;

	factory UserSearchResponseDetail.fromJson(Map<String, dynamic> json) {
		return _$UserSearchResponseDetailFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$UserSearchResponseDetailToJson(this);

	static Future<UserSearchResponseDetail> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, UserSearchResponseDetail>((json)=>UserSearchResponseDetail.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}