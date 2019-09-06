import 'ignore_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'user_to_user_context.g.dart';

@JsonSerializable()
class UserToUserContext {

	@JsonKey(name:'isFollowing')
	bool isFollowing;

	@JsonKey(name:'ignoreStatus')
	IgnoreResponse ignoreStatus;

	@JsonKey(name:'globalIgnoreEndDate')
	String globalIgnoreEndDate;
	UserToUserContext();

	factory UserToUserContext.fromJson(Map<String, dynamic> json) => _$UserToUserContextFromJson(json);
	
	Map<String, dynamic> toJson() => _$UserToUserContextToJson(this);
}
