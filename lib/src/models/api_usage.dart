import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'series.dart';

part 'api_usage.g.dart';

@JsonSerializable()
class ApiUsage{	
	ApiUsage();

	
	/// Counts for on API calls made for the time range.
	@JsonKey(name:'apiCalls')
	List<Series>? apiCalls;
	
	/// Instances of blocked requests or requests that crossed the warn threshold during the time range.
	@JsonKey(name:'throttledRequests')
	List<Series>? throttledRequests;

	factory ApiUsage.fromJson(Map<String, dynamic> json) {
		return _$ApiUsageFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$ApiUsageToJson(this);

	static Future<ApiUsage> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, ApiUsage>((json)=>ApiUsage.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}