import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_season_pass_definition.g.dart';

@JsonSerializable()
class DestinySeasonPassDefinition{
	
	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/// This is the progression definition related to the progression for the initial levels 1-100 that provide item rewards for the Season pass. Further experience after you reach the limit is provided in the &quot;Prestige&quot; progression referred to by prestigeProgressionHash.
	@JsonKey(name:'rewardProgressionHash')
	int rewardProgressionHash;
	
	/// I know what you&#39;re thinking, but I promise we&#39;re not going to duplicate and drown you. Instead, we&#39;re giving you sweet, sweet power bonuses.
	///  Prestige progression is further progression that you can make on the Season pass after you gain max ranks, that will ultimately increase your power&#x2F;light level over the theoretical limit.
	@JsonKey(name:'prestigeProgressionHash')
	int prestigeProgressionHash;
	
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