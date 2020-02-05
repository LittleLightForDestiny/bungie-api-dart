import 'package:json_annotation/json_annotation.dart';

import 'destiny_display_properties_definition.dart';
import 'destiny_item_translation_block_definition.dart';
import 'destiny_artifact_tier_definition.dart';

part 'destiny_artifact_definition.g.dart';

/// Represents known info about a Destiny Artifact.
/// We cannot guarantee that artifact definitions will be immutable between seasons - in fact, we&#39;ve been told that they will be replaced between seasons. But this definition is built both to minimize the amount of lookups for related data that have to occur, and is built in hope that, if this plan changes, we will be able to accommodate it more easily.
@JsonSerializable()
class DestinyArtifactDefinition{
	
	DestinyArtifactDefinition();

	factory DestinyArtifactDefinition.fromJson(Map<String, dynamic> json) => _$DestinyArtifactDefinitionFromJson(json);

	/// Any basic display info we know about the Artifact. Currently sourced from a related inventory item, but the source of this data is subject to change.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;
	/// Any Geometry/3D info we know about the Artifact. Currently sourced from a related inventory item's gearset information, but the source of this data is subject to change.
	@JsonKey(name:'translationBlock')
	DestinyItemTranslationBlockDefinition translationBlock;
	/// Any Tier/Rank data related to this artifact, listed in display order.  Currently sourced from a Vendor, but this source is subject to change.
	@JsonKey(name:'tiers')
	List<DestinyArtifactTierDefinition> tiers;
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;

	
	
	Map<String, dynamic> toJson() => _$DestinyArtifactDefinitionToJson(this);
}