import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_activity_difficulty_tier_definition.dart';

part 'destiny_activity_difficulty_tier_collection_definition.g.dart';

@JsonSerializable()
class DestinyActivityDifficultyTierCollectionDefinition{	
	DestinyActivityDifficultyTierCollectionDefinition();

	
	@JsonKey(name:'difficultyTiers')
	List<DestinyActivityDifficultyTierDefinition>? difficultyTiers;
	
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int? hash;
	
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int? index;
	
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool? redacted;

	factory DestinyActivityDifficultyTierCollectionDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityDifficultyTierCollectionDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityDifficultyTierCollectionDefinitionToJson(this);

	static Future<DestinyActivityDifficultyTierCollectionDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityDifficultyTierCollectionDefinition>((json)=>DestinyActivityDifficultyTierCollectionDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}