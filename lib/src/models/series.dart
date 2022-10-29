import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'datapoint.dart';

part 'series.g.dart';

@JsonSerializable()
class Series{	
	Series();

	
	/// Collection of samples with time and value.
	@JsonKey(name:'datapoints')
	List<Datapoint>? datapoints;
	
	/// Target to which to datapoints apply.
	@JsonKey(name:'target')
	String? target;

	factory Series.fromJson(Map<String, dynamic> json) {
		return _$SeriesFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SeriesToJson(this);

	static Future<Series> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, Series>((json)=>Series.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}