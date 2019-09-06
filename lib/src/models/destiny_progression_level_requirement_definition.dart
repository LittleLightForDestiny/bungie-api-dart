import 'interpolation_point_float.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_progression_level_requirement_definition.g.dart';

/// These are pre-constructed collections of data that can be used to determine the Level Requirement for an item given a Progression to be tested (such as the Character&#39;s level).
/// For instance, say a character receives a new Auto Rifle, and that Auto Rifle&#39;s DestinyInventoryItemDefinition.quality.progressionLevelRequirementHash property is pointing at one of these DestinyProgressionLevelRequirementDefinitions. Let&#39;s pretend also that the progressionHash it is pointing at is the Character Level progression. In that situation, the character&#39;s level will be used to interpolate a value in the requirementCurve property. The value picked up from that interpolation will be the required level for the item.
@JsonSerializable()
class DestinyProgressionLevelRequirementDefinition {

	/// A curve of level requirements, weighted by the related progressions&#39; level.
	/// Interpolate against this curve with the character&#39;s progression level to determine what the level requirement of the generated item that is using this data will be.
	@JsonKey(name:'requirementCurve')
	List<InterpolationPointFloat> requirementCurve;

	/// The progression whose level should be used to determine the level requirement.
	/// Look up the DestinyProgressionDefinition with this hash for more information about the progression in question.
	@JsonKey(name:'progressionHash')
	int progressionHash;

	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;

	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;

	/// If this is true, then there is an entity with this identifier&#x2F;type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;
	DestinyProgressionLevelRequirementDefinition();

	factory DestinyProgressionLevelRequirementDefinition.fromJson(Map<String, dynamic> json) => _$DestinyProgressionLevelRequirementDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyProgressionLevelRequirementDefinitionToJson(this);
}
