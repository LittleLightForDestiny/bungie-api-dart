import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_season_pass_definition.g.dart';

@JsonSerializable()
class DestinySeasonPassDefinition{
	
	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;
	
	@JsonKey(name:'rewardProgressionHash')
	int rewardProgressionHash;
	
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
	DestinySeasonPassDefinition();

	factory DestinySeasonPassDefinition.fromJson(Map<String, dynamic> json) => _$DestinySeasonPassDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinySeasonPassDefinitionToJson(this);
}