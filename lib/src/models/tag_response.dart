import 'package:json_annotation/json_annotation.dart';

import 'ignore_response.dart';

part 'tag_response.g.dart';

@JsonSerializable()
class TagResponse{
	
	TagResponse();

	factory TagResponse.fromJson(Map<String, dynamic> json) {
		return _$TagResponseFromJson(json);
	}

	@JsonKey(name:'tagText')
	String? tagText;
	@JsonKey(name:'ignoreStatus')
	IgnoreResponse? ignoreStatus;

	
	
	Map<String, dynamic> toJson() => _$TagResponseToJson(this);
}