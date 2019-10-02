import 'destiny_record_interval_objective.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_record_interval_block.g.dart';

@JsonSerializable()
class DestinyRecordIntervalBlock{
	
	@JsonKey(name:'intervalObjectives')
	List<DestinyRecordIntervalObjective> intervalObjectives;
	
	@JsonKey(name:'originalObjectiveArrayInsertionIndex')
	int originalObjectiveArrayInsertionIndex;
	DestinyRecordIntervalBlock();

	factory DestinyRecordIntervalBlock.fromJson(Map<String, dynamic> json) => _$DestinyRecordIntervalBlockFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyRecordIntervalBlockToJson(this);
}