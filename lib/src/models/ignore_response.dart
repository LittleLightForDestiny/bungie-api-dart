
import 'package:json_annotation/json_annotation.dart';
part 'ignore_response.g.dart';

@JsonSerializable()
class IgnoreResponse {

	@JsonKey(name:'isIgnored')
	bool isIgnored;

	@JsonKey(name:'ignoreFlags')
	int ignoreFlags;
	IgnoreResponse();

	factory IgnoreResponse.fromJson(Map<String, dynamic> json) => _$IgnoreResponseFromJson(json);
	
	Map<String, dynamic> toJson() => _$IgnoreResponseToJson(this);
}
