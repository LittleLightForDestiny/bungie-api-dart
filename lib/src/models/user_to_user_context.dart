import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'ignore_response.dart';

part 'user_to_user_context.g.dart';

@JsonSerializable()
class UserToUserContext{	
	UserToUserContext();

	
	@JsonKey(name:'isFollowing')
	bool? isFollowing;
	
	@JsonKey(name:'ignoreStatus')
	IgnoreResponse? ignoreStatus;
	
	@JsonKey(name:'globalIgnoreEndDate')
	String? globalIgnoreEndDate;

	factory UserToUserContext.fromJson(Map<String, dynamic> json) {
		return _$UserToUserContextFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$UserToUserContextToJson(this);

	static Future<UserToUserContext> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, UserToUserContext>((json)=>UserToUserContext.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}