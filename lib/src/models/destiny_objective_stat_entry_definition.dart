import 'destiny_item_investment_stat_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_objective_stat_entry_definition.g.dart';

/// Defines the conditions under which stat modifications will be applied to a Character while participating in an objective.
@JsonSerializable()
class DestinyObjectiveStatEntryDefinition {

	/// The stat being modified, and the value used.
	@JsonKey(name:'stat')
	DestinyItemInvestmentStatDefinition stat;

	/// Whether it will be applied as long as the objective is active, when it&#39;s completed, or until it&#39;s completed.
	@JsonKey(name:'style')
	int style;
	DestinyObjectiveStatEntryDefinition();

	factory DestinyObjectiveStatEntryDefinition.fromJson(Map<String, dynamic> json) => _$DestinyObjectiveStatEntryDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyObjectiveStatEntryDefinitionToJson(this);
}
