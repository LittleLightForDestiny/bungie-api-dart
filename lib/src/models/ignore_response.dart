import 'package:json_annotation/json_annotation.dart';

import '../enums/ignore_status.dart';

part 'ignore_response.g.dart';

@JsonSerializable()
class IgnoreResponse{	
	IgnoreResponse();

	factory IgnoreResponse.fromJson(Map<String, dynamic> json) {
		return _$IgnoreResponseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$IgnoreResponseToJson(this);
	
	@JsonKey(name:'isIgnored')
	bool? isIgnored;
	
	@JsonKey(name:'ignoreFlags')
	IgnoreStatus? ignoreFlags;
}