import 'ignore_response.dart';

import 'package:json_annotation/json_annotation.dart';
part 'tag_response.g.dart';

@JsonSerializable()
class TagResponse {

	@JsonKey(name:'tagText')
	String tagText;

	@JsonKey(name:'ignoreStatus')
	IgnoreResponse ignoreStatus;
	TagResponse();

	factory TagResponse.fromJson(Map<String, dynamic> json) => _$TagResponseFromJson(json);
	
	Map<String, dynamic> toJson() => _$TagResponseToJson(this);
}
