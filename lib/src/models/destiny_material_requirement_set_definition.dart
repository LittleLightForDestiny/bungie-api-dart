import 'destiny_material_requirement.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_material_requirement_set_definition.g.dart';

/// Represent a set of material requirements: Items that either need to be owned or need to be consumed in order to perform an action.
/// A variety of other entities refer to these as gatekeepers and payments for actions that can be performed in game.
@JsonSerializable()
class DestinyMaterialRequirementSetDefinition {

	/// The list of all materials that are required.
	@JsonKey(name:'materials')
	List<DestinyMaterialRequirement> materials;

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
	DestinyMaterialRequirementSetDefinition();

	factory DestinyMaterialRequirementSetDefinition.fromJson(Map<String, dynamic> json) => _$DestinyMaterialRequirementSetDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyMaterialRequirementSetDefinitionToJson(this);
}
