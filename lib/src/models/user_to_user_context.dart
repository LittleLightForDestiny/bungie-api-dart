import 'package:json_annotation/json_annotation.dart';

import 'ignore_response.dart';

part 'user_to_user_context.g.dart';

@JsonSerializable()
class UserToUserContext{
	
	UserToUserContext();

	factory UserToUserContext.fromJson(Map<String, dynamic> json) {
		try{
			return _$UserToUserContextFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'isFollowing')
	bool isFollowing;
	@JsonKey(name:'ignoreStatus')
	IgnoreResponse ignoreStatus;
	@JsonKey(name:'globalIgnoreEndDate')
	String globalIgnoreEndDate;

	
	
	Map<String, dynamic> toJson() => _$UserToUserContextToJson(this);
}