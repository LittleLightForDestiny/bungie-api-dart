import 'package:json_annotation/json_annotation.dart';

import 'user_search_response_detail.dart';

part 'user_search_response.g.dart';

@JsonSerializable()
class UserSearchResponse{
	
	UserSearchResponse();

	factory UserSearchResponse.fromJson(Map<String, dynamic> json) {
		return _$UserSearchResponseFromJson(json);
	}

	@JsonKey(name:'searchResults')
	List<UserSearchResponseDetail>? searchResults;
	@JsonKey(name:'page')
	int? page;
	@JsonKey(name:'hasMore')
	bool? hasMore;

	
	
	Map<String, dynamic> toJson() => _$UserSearchResponseToJson(this);
}