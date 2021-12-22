import 'package:json_annotation/json_annotation.dart';


part 'exact_search_request.g.dart';

@JsonSerializable()
class ExactSearchRequest{
	
	ExactSearchRequest();

	factory ExactSearchRequest.fromJson(Map<String, dynamic> json) {
		return _$ExactSearchRequestFromJson(json);
	}

	@JsonKey(name:'displayName')
	String? displayName;
	@JsonKey(name:'displayNameCode')
	int? displayNameCode;

	
	
	Map<String, dynamic> toJson() => _$ExactSearchRequestToJson(this);
}