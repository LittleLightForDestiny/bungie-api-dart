import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'user_search_response_detail.dart';

part 'user_search_response.g.dart';

@JsonSerializable()
class UserSearchResponse{	
	UserSearchResponse();

	
	@JsonKey(name:'searchResults')
	List<UserSearchResponseDetail>? searchResults;
	
	@JsonKey(name:'page')
	int? page;
	
	@JsonKey(name:'hasMore')
	bool? hasMore;

	factory UserSearchResponse.fromJson(Map<String, dynamic> json) {
		return _$UserSearchResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$UserSearchResponseToJson(this);

	static Future<UserSearchResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, UserSearchResponse>((json)=>UserSearchResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}