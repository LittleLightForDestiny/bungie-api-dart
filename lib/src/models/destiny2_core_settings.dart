
import 'package:json_annotation/json_annotation.dart';
part 'destiny2_core_settings.g.dart';

@JsonSerializable()
class Destiny2CoreSettings {

	@JsonKey(name:'collectionRootNode')
	int collectionRootNode;

	@JsonKey(name:'badgesRootNode')
	int badgesRootNode;

	@JsonKey(name:'recordsRootNode')
	int recordsRootNode;

	@JsonKey(name:'medalsRootNode')
	int medalsRootNode;

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
	Destiny2CoreSettings();

	factory Destiny2CoreSettings.fromJson(Map<String, dynamic> json) => _$Destiny2CoreSettingsFromJson(json);
	
	Map<String, dynamic> toJson() => _$Destiny2CoreSettingsToJson(this);
}
