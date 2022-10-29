import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_record_interval_objective.dart';
import 'destiny_record_interval_rewards.dart';

part 'destiny_record_interval_block.g.dart';

@JsonSerializable()
class DestinyRecordIntervalBlock{	
	DestinyRecordIntervalBlock();

	
	@JsonKey(name:'intervalObjectives')
	List<DestinyRecordIntervalObjective>? intervalObjectives;
	
	@JsonKey(name:'intervalRewards')
	List<DestinyRecordIntervalRewards>? intervalRewards;
	
	@JsonKey(name:'originalObjectiveArrayInsertionIndex')
	int? originalObjectiveArrayInsertionIndex;

	factory DestinyRecordIntervalBlock.fromJson(Map<String, dynamic> json) {
		return _$DestinyRecordIntervalBlockFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyRecordIntervalBlockToJson(this);

	static Future<DestinyRecordIntervalBlock> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyRecordIntervalBlock>((json)=>DestinyRecordIntervalBlock.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}