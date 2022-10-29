import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/ignore_status.dart';

part 'ignore_response.g.dart';

@JsonSerializable()
class IgnoreResponse{	
	IgnoreResponse();

	
	@JsonKey(name:'isIgnored')
	bool? isIgnored;
	
	@JsonKey(name:'ignoreFlags')
	IgnoreStatus? ignoreFlags;

	factory IgnoreResponse.fromJson(Map<String, dynamic> json) {
		return _$IgnoreResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$IgnoreResponseToJson(this);

	static Future<IgnoreResponse> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, IgnoreResponse>((json)=>IgnoreResponse.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}