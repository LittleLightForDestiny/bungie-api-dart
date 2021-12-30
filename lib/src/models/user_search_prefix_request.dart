import 'package:json_annotation/json_annotation.dart';


part 'user_search_prefix_request.g.dart';

@JsonSerializable()
class UserSearchPrefixRequest{	
	UserSearchPrefixRequest();

	factory UserSearchPrefixRequest.fromJson(Map<String, dynamic> json) {
		return _$UserSearchPrefixRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$UserSearchPrefixRequestToJson(this);
	
	@JsonKey(name:'displayNamePrefix')
	String? displayNamePrefix;
}