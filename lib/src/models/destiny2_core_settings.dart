import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny2_core_settings.g.dart';

@JsonSerializable()
class Destiny2CoreSettings{	
	Destiny2CoreSettings();

	
	@JsonKey(name:'collectionRootNode')
	int? collectionRootNode;
	
	@JsonKey(name:'badgesRootNode')
	int? badgesRootNode;
	
	@JsonKey(name:'recordsRootNode')
	int? recordsRootNode;
	
	@JsonKey(name:'medalsRootNode')
	int? medalsRootNode;
	
	@JsonKey(name:'metricsRootNode')
	int? metricsRootNode;
	
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
	
	@JsonKey(name:'craftingRootNodeHash')
	int? craftingRootNodeHash;
	
	@JsonKey(name:'loadoutConstantsHash')
	int? loadoutConstantsHash;
	
	@JsonKey(name:'guardianRankConstantsHash')
	int? guardianRankConstantsHash;
	
	@JsonKey(name:'fireteamFinderConstantsHash')
	int? fireteamFinderConstantsHash;
	
	@JsonKey(name:'inventoryItemConstantsHash')
	int? inventoryItemConstantsHash;
	
	@JsonKey(name:'featuredItemsListHash')
	int? featuredItemsListHash;
	
	@JsonKey(name:'armorArchetypePlugSetHash')
	int? armorArchetypePlugSetHash;
	
	@JsonKey(name:'seasonalHubEventCardHash')
	int? seasonalHubEventCardHash;
	
	@JsonKey(name:'guardianRanksRootNodeHash')
	int? guardianRanksRootNodeHash;
	
	@JsonKey(name:'currentRankProgressionHashes')
	List<int>? currentRankProgressionHashes;
	
	@JsonKey(name:'insertPlugFreeProtectedPlugItemHashes')
	List<int>? insertPlugFreeProtectedPlugItemHashes;
	
	@JsonKey(name:'insertPlugFreeBlockedSocketTypeHashes')
	List<int>? insertPlugFreeBlockedSocketTypeHashes;
	
	@JsonKey(name:'enabledFireteamFinderActivityGraphHashes')
	List<int>? enabledFireteamFinderActivityGraphHashes;
	
	@JsonKey(name:'undiscoveredCollectibleImage')
	String? undiscoveredCollectibleImage;
	
	@JsonKey(name:'ammoTypeHeavyIcon')
	String? ammoTypeHeavyIcon;
	
	@JsonKey(name:'ammoTypeSpecialIcon')
	String? ammoTypeSpecialIcon;
	
	@JsonKey(name:'ammoTypePrimaryIcon')
	String? ammoTypePrimaryIcon;
	
	@JsonKey(name:'currentSeasonalArtifactHash')
	int? currentSeasonalArtifactHash;
	
	@JsonKey(name:'currentSeasonHash')
	int? currentSeasonHash;
	
	@JsonKey(name:'seasonalChallengesPresentationNodeHash')
	int? seasonalChallengesPresentationNodeHash;
	
	@JsonKey(name:'futureSeasonHashes')
	List<int>? futureSeasonHashes;
	
	@JsonKey(name:'pastSeasonHashes')
	List<int>? pastSeasonHashes;

	factory Destiny2CoreSettings.fromJson(Map<String, dynamic> json) {
		return _$Destiny2CoreSettingsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$Destiny2CoreSettingsToJson(this);

	static Future<Destiny2CoreSettings> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, Destiny2CoreSettings>((json)=>Destiny2CoreSettings.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}