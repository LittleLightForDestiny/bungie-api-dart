import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'user_search_prefix_request.g.dart';

@JsonSerializable()
class UserSearchPrefixRequest{	
	UserSearchPrefixRequest();

	
	@JsonKey(name:'displayNamePrefix')
	String? displayNamePrefix;

	factory UserSearchPrefixRequest.fromJson(Map<String, dynamic> json) {
		return _$UserSearchPrefixRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$UserSearchPrefixRequestToJson(this);

	static Future<UserSearchPrefixRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, UserSearchPrefixRequest>((json)=>UserSearchPrefixRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}