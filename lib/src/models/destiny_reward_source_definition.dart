import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_reward_source_definition.g.dart';

/// Represents a heuristically-determined &quot;item source&quot; according to Bungie.net. These item sources are non-canonical: we apply a combination of special configuration and often-fragile heuristics to attempt to discern whether an item should be part of a given &quot;source,&quot; but we have known cases of false positives and negatives due to our imperfect heuristics.
/// Still, they provide a decent approximation for people trying to figure out how an item can be obtained. DestinyInventoryItemDefinition refers to sources in the sourceDatas.sourceHashes property for all sources we determined the item could spawn from.
/// An example in Destiny 1 of a Source would be &quot;Nightfall&quot;. If an item has the &quot;Nightfall&quot; source associated with it, it&#39;s extremely likely that you can earn that item while playing Nightfall, either during play or as an after-completion reward.
@JsonSerializable()
class DestinyRewardSourceDefinition {

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// Sources are grouped into categories: common ways that items are provided. I hope to see this expand in Destiny 2 once we have time to generate accurate reward source data.
	@JsonKey(name:'category')
	int category;

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
	DestinyRewardSourceDefinition();

	factory DestinyRewardSourceDefinition.fromJson(Map<String, dynamic> json) => _$DestinyRewardSourceDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyRewardSourceDefinitionToJson(this);
}
