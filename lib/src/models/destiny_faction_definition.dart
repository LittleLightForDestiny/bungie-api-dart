import 'destiny_display_properties_definition.dart';
import 'destiny_faction_vendor_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_faction_definition.g.dart';

/// These definitions represent Factions in the game. Factions have ended up unilaterally being related to Vendors that represent them, but that need not necessarily be the case.
/// A Faction is really just an entity that has a related progression for which a character can gain experience. In Destiny 1, Dead Orbit was an example of a Faction: there happens to be a Vendor that represents Dead Orbit (and indeed, DestinyVendorDefinition.factionHash defines to this relationship), but Dead Orbit could theoretically exist without the Vendor that provides rewards.
@JsonSerializable()
class DestinyFactionDefinition {

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// The hash identifier for the DestinyProgressionDefinition that indicates the character&#39;s relationship with this faction in terms of experience and levels.
	@JsonKey(name:'progressionHash')
	int progressionHash;

	/// The faction token item hashes, and their respective progression values.
	@JsonKey(name:'tokenValues')
	Map<String, int> tokenValues;

	/// The faction reward item hash, usually an engram.
	@JsonKey(name:'rewardItemHash')
	int rewardItemHash;

	/// The faction reward vendor hash, used for faction engram previews.
	@JsonKey(name:'rewardVendorHash')
	int rewardVendorHash;

	/// List of vendors that are associated with this faction. The last vendor that passes the unlock flag checks is the one that should be shown.
	@JsonKey(name:'vendors')
	List<DestinyFactionVendorDefinition> vendors;

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
	DestinyFactionDefinition();

	factory DestinyFactionDefinition.fromJson(Map<String, dynamic> json) => _$DestinyFactionDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyFactionDefinitionToJson(this);
}
