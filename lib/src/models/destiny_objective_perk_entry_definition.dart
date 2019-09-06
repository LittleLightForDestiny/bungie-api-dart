
import 'package:json_annotation/json_annotation.dart';
part 'destiny_objective_perk_entry_definition.g.dart';

/// Defines the conditions under which an intrinsic perk is applied while participating in an Objective.
/// These perks will generally not be benefit-granting perks, but rather a perk that modifies gameplay in some interesting way.
@JsonSerializable()
class DestinyObjectivePerkEntryDefinition {

	/// The hash identifier of the DestinySandboxPerkDefinition that will be applied to the character.
	@JsonKey(name:'perkHash')
	int perkHash;

	/// An enumeration indicating whether it will be applied as long as the Objective is active, when it&#39;s completed, or until it&#39;s completed.
	@JsonKey(name:'style')
	int style;
	DestinyObjectivePerkEntryDefinition();

	factory DestinyObjectivePerkEntryDefinition.fromJson(Map<String, dynamic> json) => _$DestinyObjectivePerkEntryDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyObjectivePerkEntryDefinitionToJson(this);
}
