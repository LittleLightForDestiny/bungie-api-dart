import 'package:json_annotation/json_annotation.dart';

import 'series.dart';

part 'api_usage.g.dart';

@JsonSerializable()
class ApiUsage{	
	ApiUsage();

	factory ApiUsage.fromJson(Map<String, dynamic> json) {
		return _$ApiUsageFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ApiUsageToJson(this);
	
	/// Counts for on API calls made for the time range.
	@JsonKey(name:'apiCalls')
	List<Series>? apiCalls;
	
	/// Instances of blocked requests or requests that crossed the warn threshold during the time range.
	@JsonKey(name:'throttledRequests')
	List<Series>? throttledRequests;
}