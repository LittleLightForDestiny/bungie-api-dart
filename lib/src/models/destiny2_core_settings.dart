import 'package:json_annotation/json_annotation.dart';


part 'destiny2_core_settings.g.dart';

@JsonSerializable()
class Destiny2CoreSettings{
	
	Destiny2CoreSettings();

	factory Destiny2CoreSettings.fromJson(Map<String, dynamic> json) {
		try{
			return _$Destiny2CoreSettingsFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'collectionRootNode')
	int collectionRootNode;
	@JsonKey(name:'badgesRootNode')
	int badgesRootNode;
	@JsonKey(name:'recordsRootNode')
	int recordsRootNode;
	@JsonKey(name:'medalsRootNode')
	int medalsRootNode;
	@JsonKey(name:'metricsRootNode')
	int metricsRootNode;
	@JsonKey(name:'currentRankProgressionHashes')
	List<int> currentRankProgressionHashes;
	@JsonKey(name:'undiscoveredCollectibleImage')
	String undiscoveredCollectibleImage;
	@JsonKey(name:'ammoTypeHeavyIcon')
	String ammoTypeHeavyIcon;
	@JsonKey(name:'ammoTypeSpecialIcon')
	String ammoTypeSpecialIcon;
	@JsonKey(name:'ammoTypePrimaryIcon')
	String ammoTypePrimaryIcon;
	@JsonKey(name:'currentSeasonalArtifactHash')
	int currentSeasonalArtifactHash;
	@JsonKey(name:'currentSeasonHash')
	int currentSeasonHash;
	@JsonKey(name:'futureSeasonHashes')
	List<int> futureSeasonHashes;
	@JsonKey(name:'pastSeasonHashes')
	List<int> pastSeasonHashes;

	
	
	Map<String, dynamic> toJson() => _$Destiny2CoreSettingsToJson(this);
}