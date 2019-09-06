import 'datapoint.dart';

import 'package:json_annotation/json_annotation.dart';
part 'series.g.dart';

@JsonSerializable()
class Series {

	/// Collection of samples with time and value.
	@JsonKey(name:'datapoints')
	List<Datapoint> datapoints;

	/// Target to which to datapoints apply.
	@JsonKey(name:'target')
	String target;
	Series();

	factory Series.fromJson(Map<String, dynamic> json) => _$SeriesFromJson(json);
	
	Map<String, dynamic> toJson() => _$SeriesToJson(this);
}
