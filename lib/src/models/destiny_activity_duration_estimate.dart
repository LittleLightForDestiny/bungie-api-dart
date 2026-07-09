import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_duration_estimate.g.dart';

@JsonSerializable()
class DestinyActivityDurationEstimate{	
	DestinyActivityDurationEstimate();

	
	/// The number of filled pips shown on the Portal tile
	@JsonKey(name:'durationPipsFilledCount')
	int? durationPipsFilledCount;
	
	/// The total number of pips shown on the Portal tile
	@JsonKey(name:'durationPipsTotalCount')
	int? durationPipsTotalCount;
	
	/// The text string showing the estimated time to complete this activity
	@JsonKey(name:'durationEstimateText')
	String? durationEstimateText;

	factory DestinyActivityDurationEstimate.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityDurationEstimateFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityDurationEstimateToJson(this);

	static Future<DestinyActivityDurationEstimate> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityDurationEstimate>((json)=>DestinyActivityDurationEstimate.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}