import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_activity_requirement_label.dart';

part 'destiny_activity_requirements_block.g.dart';

@JsonSerializable()
class DestinyActivityRequirementsBlock{	
	DestinyActivityRequirementsBlock();

	
	/// If being a fireteam Leader in this activity is gated, this is the gate being checked.
	@JsonKey(name:'leaderRequirementLabels')
	List<DestinyActivityRequirementLabel>? leaderRequirementLabels;
	
	/// If being a fireteam member in this activity is gated, this is the gate being checked.
	@JsonKey(name:'fireteamRequirementLabels')
	List<DestinyActivityRequirementLabel>? fireteamRequirementLabels;

	factory DestinyActivityRequirementsBlock.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityRequirementsBlockFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityRequirementsBlockToJson(this);

	static Future<DestinyActivityRequirementsBlock> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityRequirementsBlock>((json)=>DestinyActivityRequirementsBlock.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}