import 'package:json_annotation/json_annotation.dart';


part 'destiny_record_interval_objective.g.dart';

@JsonSerializable()
class DestinyRecordIntervalObjective{
	
	DestinyRecordIntervalObjective();

	factory DestinyRecordIntervalObjective.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyRecordIntervalObjectiveFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'intervalObjectiveHash')
	int intervalObjectiveHash;
	@JsonKey(name:'intervalScoreValue')
	int intervalScoreValue;

	
	
	Map<String, dynamic> toJson() => _$DestinyRecordIntervalObjectiveToJson(this);
}