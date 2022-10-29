import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_item_investment_stat_definition.dart';
import '../enums/destiny_objective_grant_style.dart';

part 'destiny_objective_stat_entry_definition.g.dart';

/// Defines the conditions under which stat modifications will be applied to a Character while participating in an objective.
@JsonSerializable()
class DestinyObjectiveStatEntryDefinition{	
	DestinyObjectiveStatEntryDefinition();

	
	/// The stat being modified, and the value used.
	@JsonKey(name:'stat')
	DestinyItemInvestmentStatDefinition? stat;
	
	/// Whether it will be applied as long as the objective is active, when it's completed, or until it's completed.
	@JsonKey(name:'style',fromJson:decodeDestinyObjectiveGrantStyle,toJson:encodeDestinyObjectiveGrantStyle)
	DestinyObjectiveGrantStyle? style;

	factory DestinyObjectiveStatEntryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyObjectiveStatEntryDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyObjectiveStatEntryDefinitionToJson(this);

	static Future<DestinyObjectiveStatEntryDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyObjectiveStatEntryDefinition>((json)=>DestinyObjectiveStatEntryDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}