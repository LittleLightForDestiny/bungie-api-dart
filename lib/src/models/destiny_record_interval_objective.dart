import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_record_interval_objective.g.dart';

@JsonSerializable()
class DestinyRecordIntervalObjective{	
	DestinyRecordIntervalObjective();

	
	@JsonKey(name:'intervalObjectiveHash')
	int? intervalObjectiveHash;
	
	@JsonKey(name:'intervalScoreValue')
	int? intervalScoreValue;

	factory DestinyRecordIntervalObjective.fromJson(Map<String, dynamic> json) {
		return _$DestinyRecordIntervalObjectiveFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyRecordIntervalObjectiveToJson(this);

	static Future<DestinyRecordIntervalObjective> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyRecordIntervalObjective>((json)=>DestinyRecordIntervalObjective.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}