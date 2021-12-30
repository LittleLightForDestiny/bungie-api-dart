import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_objective_grant_style.dart';

part 'destiny_objective_perk_entry_definition.g.dart';

/// Defines the conditions under which an intrinsic perk is applied while participating in an Objective.
/// These perks will generally not be benefit-granting perks, but rather a perk that modifies gameplay in some interesting way.
@JsonSerializable()
class DestinyObjectivePerkEntryDefinition{	
	DestinyObjectivePerkEntryDefinition();

	factory DestinyObjectivePerkEntryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyObjectivePerkEntryDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyObjectivePerkEntryDefinitionToJson(this);
	
	/// The hash identifier of the DestinySandboxPerkDefinition that will be applied to the character.
	@JsonKey(name:'perkHash')
	int? perkHash;
	
	/// An enumeration indicating whether it will be applied as long as the Objective is active, when it's completed, or until it's completed.
	@JsonKey(name:'style',unknownEnumValue:DestinyObjectiveGrantStyle.ProtectedInvalidEnumValue)
	DestinyObjectiveGrantStyle? style;
}