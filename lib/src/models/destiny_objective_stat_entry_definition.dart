import 'package:json_annotation/json_annotation.dart';

import 'destiny_item_investment_stat_definition.dart';
import '../enums/destiny_objective_grant_style.dart';

part 'destiny_objective_stat_entry_definition.g.dart';

/// Defines the conditions under which stat modifications will be applied to a Character while participating in an objective.
@JsonSerializable()
class DestinyObjectiveStatEntryDefinition{
	
	DestinyObjectiveStatEntryDefinition();

	factory DestinyObjectiveStatEntryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyObjectiveStatEntryDefinitionFromJson(json);
	}

	/// The stat being modified, and the value used.
	@JsonKey(name:'stat')
	DestinyItemInvestmentStatDefinition? stat;
	/// Whether it will be applied as long as the objective is active, when it's completed, or until it's completed.
	@JsonKey(name:'style',unknownEnumValue:DestinyObjectiveGrantStyle.ProtectedInvalidEnumValue)
	DestinyObjectiveGrantStyle? style;

	
	
	Map<String, dynamic> toJson() => _$DestinyObjectiveStatEntryDefinitionToJson(this);
}