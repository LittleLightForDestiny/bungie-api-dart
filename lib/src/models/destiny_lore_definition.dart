import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_lore_definition.g.dart';

/// These are definitions for in-game &quot;Lore,&quot; meant to be narrative enhancements of the game experience.
/// DestinyInventoryItemDefinitions for interesting items point to these definitions, but nothing&#39;s stopping you from scraping all of these and doing something cool with them. If they end up having cool data.
@JsonSerializable()
class DestinyLoreDefinition {

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	@JsonKey(name:'subtitle')
	String subtitle;

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
	DestinyLoreDefinition();

	factory DestinyLoreDefinition.fromJson(Map<String, dynamic> json) => _$DestinyLoreDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyLoreDefinitionToJson(this);
}
