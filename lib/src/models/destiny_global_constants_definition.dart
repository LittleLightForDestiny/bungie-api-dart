import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_pathfinder_constants_definition.dart';
import 'destiny_reward_pass_rank_seal_images.dart';
import 'destiny_seasonal_hub_rank_icon_images.dart';

part 'destiny_global_constants_definition.g.dart';

@JsonSerializable()
class DestinyGlobalConstantsDefinition{	
	DestinyGlobalConstantsDefinition();

	
	/// Assorted constants for Pathfinder objectives
	@JsonKey(name:'pathfinderConstants')
	DestinyPathfinderConstantsDefinition? pathfinderConstants;
	
	@JsonKey(name:'collectionsRootNodeHash')
	int? collectionsRootNodeHash;
	
	@JsonKey(name:'collectionBadgesRootNodeHash')
	int? collectionBadgesRootNodeHash;
	
	@JsonKey(name:'activeTriumphsRootNodeHash')
	int? activeTriumphsRootNodeHash;
	
	@JsonKey(name:'activeSealsRootNodeHash')
	int? activeSealsRootNodeHash;
	
	@JsonKey(name:'legacyTriumphsRootNodeHash')
	int? legacyTriumphsRootNodeHash;
	
	@JsonKey(name:'legacySealsRootNodeHash')
	int? legacySealsRootNodeHash;
	
	@JsonKey(name:'medalsRootNodeHash')
	int? medalsRootNodeHash;
	
	@JsonKey(name:'exoticCatalystsRootNodeHash')
	int? exoticCatalystsRootNodeHash;
	
	@JsonKey(name:'loreRootNodeHash')
	int? loreRootNodeHash;
	
	@JsonKey(name:'metricsRootNodeHash')
	int? metricsRootNodeHash;
	
	@JsonKey(name:'craftingRootNodeHash')
	int? craftingRootNodeHash;
	
	@JsonKey(name:'guardianRanksRootNodeHash')
	int? guardianRanksRootNodeHash;
	
	@JsonKey(name:'seasonalHubEventCardHash')
	int? seasonalHubEventCardHash;
	
	@JsonKey(name:'destinyRewardPassRankSealImages')
	DestinyRewardPassRankSealImages? destinyRewardPassRankSealImages;
	
	@JsonKey(name:'destinySeasonalHubRankIconImages')
	DestinySeasonalHubRankIconImages? destinySeasonalHubRankIconImages;
	
	@JsonKey(name:'armorArchetypePlugSetHash')
	int? armorArchetypePlugSetHash;
	
	@JsonKey(name:'featuredItemsListHash')
	int? featuredItemsListHash;
	
	@JsonKey(name:'portalActivityGraphRootNodesWithIcons')
	Map<String, String>? portalActivityGraphRootNodesWithIcons;
	
	@JsonKey(name:'orderRewardsUnlockValueHashesToRewardItemHashes')
	Map<String, int>? orderRewardsUnlockValueHashesToRewardItemHashes;
	
	@JsonKey(name:'questItemTraitToFeaturedQuestImagePath')
	Map<String, String>? questItemTraitToFeaturedQuestImagePath;
	
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

	factory DestinyGlobalConstantsDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyGlobalConstantsDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyGlobalConstantsDefinitionToJson(this);

	static Future<DestinyGlobalConstantsDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyGlobalConstantsDefinition>((json)=>DestinyGlobalConstantsDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}