import 'date_range.dart';
import 'series.dart';

import 'package:json_annotation/json_annotation.dart';
part 'api_usage.g.dart';

@JsonSerializable()
class ApiUsage {

	/// The date range for the data being reported.
	@JsonKey(name:'range')
	DateRange range;

	/// Counts for on API calls made for the time range.
	@JsonKey(name:'apiCalls')
	List<Series> apiCalls;

	/// Instances of blocked requests or requests that crossed the warn threshold during the time range.
	@JsonKey(name:'throttledRequests')
	List<Series> throttledRequests;
	ApiUsage();

	factory ApiUsage.fromJson(Map<String, dynamic> json) => _$ApiUsageFromJson(json);
	
	Map<String, dynamic> toJson() => _$ApiUsageToJson(this);
}
