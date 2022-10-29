import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'exact_search_request.g.dart';

@JsonSerializable()
class ExactSearchRequest{	
	ExactSearchRequest();

	
	@JsonKey(name:'displayName')
	String? displayName;
	
	@JsonKey(name:'displayNameCode')
	int? displayNameCode;

	factory ExactSearchRequest.fromJson(Map<String, dynamic> json) {
		return _$ExactSearchRequestFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ExactSearchRequestToJson(this);

	static Future<ExactSearchRequest> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ExactSearchRequest>((json)=>ExactSearchRequest.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}