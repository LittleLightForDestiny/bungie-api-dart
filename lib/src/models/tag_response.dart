import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'ignore_response.dart';

part 'tag_response.g.dart';

@JsonSerializable()
class TagResponse{	
	TagResponse();

	
	@JsonKey(name:'tagText')
	String? tagText;
	
	@JsonKey(name:'ignoreStatus')
	IgnoreResponse? ignoreStatus;

	factory TagResponse.fromJson(Map<String, dynamic> json) {
		return _$TagResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$TagResponseToJson(this);

	static Future<TagResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, TagResponse>((json)=>TagResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}