import 'package:json_annotation/json_annotation.dart';

import 'datapoint.dart';

part 'series.g.dart';

@JsonSerializable()
class Series{	
	Series();

	factory Series.fromJson(Map<String, dynamic> json) {
		return _$SeriesFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$SeriesToJson(this);
	
	/// Collection of samples with time and value.
	@JsonKey(name:'datapoints')
	List<Datapoint>? datapoints;
	
	/// Target to which to datapoints apply.
	@JsonKey(name:'target')
	String? target;
}