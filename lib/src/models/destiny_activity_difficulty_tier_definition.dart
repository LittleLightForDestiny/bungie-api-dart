import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import 'destiny_activity_skull.dart';
import '../enums/destiny_activity_difficulty_tier_type.dart';
import 'destiny_activity_difficulty_tier_subcategory_override.dart';

part 'destiny_activity_difficulty_tier_definition.g.dart';

@JsonSerializable()
class DestinyActivityDifficultyTierDefinition{	
	DestinyActivityDifficultyTierDefinition();

	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	@JsonKey(name:'recommendedActivityLevelOffset')
	int? recommendedActivityLevelOffset;
	
	@JsonKey(name:'fixedActivitySkulls')
	List<DestinyActivitySkull>? fixedActivitySkulls;
	
	@JsonKey(name:'tierType',fromJson:decodeDestinyActivityDifficultyTierType,toJson:encodeDestinyActivityDifficultyTierType)
	DestinyActivityDifficultyTierType? tierType;
	
	@JsonKey(name:'optionalRequiredTrait')
	int? optionalRequiredTrait;
	
	@JsonKey(name:'activityLevel')
	int? activityLevel;
	
	@JsonKey(name:'tierRank')
	int? tierRank;
	
	@JsonKey(name:'minimumFireteamLeaderPower')
	int? minimumFireteamLeaderPower;
	
	@JsonKey(name:'maximumFireteamLeaderPower')
	int? maximumFireteamLeaderPower;
	
	@JsonKey(name:'scoreTimeLimitMultiplier')
	int? scoreTimeLimitMultiplier;
	
	@JsonKey(name:'selectableSkullCollectionHashes')
	List<int>? selectableSkullCollectionHashes;
	
	@JsonKey(name:'skullSubcategoryOverrides')
	List<DestinyActivityDifficultyTierSubcategoryOverride>? skullSubcategoryOverrides;

	factory DestinyActivityDifficultyTierDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityDifficultyTierDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityDifficultyTierDefinitionToJson(this);

	static Future<DestinyActivityDifficultyTierDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityDifficultyTierDefinition>((json)=>DestinyActivityDifficultyTierDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}