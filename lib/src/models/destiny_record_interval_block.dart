import 'package:json_annotation/json_annotation.dart';

import 'destiny_record_interval_objective.dart';

part 'destiny_record_interval_block.g.dart';

@JsonSerializable()
class DestinyRecordIntervalBlock{
	
	DestinyRecordIntervalBlock();

	factory DestinyRecordIntervalBlock.fromJson(Map<String, dynamic> json) => _$DestinyRecordIntervalBlockFromJson(json);

	@JsonKey(name:'intervalObjectives')
	List<DestinyRecordIntervalObjective> intervalObjectives;
	@JsonKey(name:'originalObjectiveArrayInsertionIndex')
	int originalObjectiveArrayInsertionIndex;

	
	
	Map<String, dynamic> toJson() => _$DestinyRecordIntervalBlockToJson(this);
}