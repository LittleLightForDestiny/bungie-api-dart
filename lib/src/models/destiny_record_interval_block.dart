import 'package:json_annotation/json_annotation.dart';

import 'destiny_record_interval_objective.dart';
import 'destiny_record_interval_rewards.dart';

part 'destiny_record_interval_block.g.dart';

@JsonSerializable()
class DestinyRecordIntervalBlock{	
	DestinyRecordIntervalBlock();

	factory DestinyRecordIntervalBlock.fromJson(Map<String, dynamic> json) {
		return _$DestinyRecordIntervalBlockFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyRecordIntervalBlockToJson(this);
	
	@JsonKey(name:'intervalObjectives')
	List<DestinyRecordIntervalObjective>? intervalObjectives;
	
	@JsonKey(name:'intervalRewards')
	List<DestinyRecordIntervalRewards>? intervalRewards;
	
	@JsonKey(name:'originalObjectiveArrayInsertionIndex')
	int? originalObjectiveArrayInsertionIndex;
}