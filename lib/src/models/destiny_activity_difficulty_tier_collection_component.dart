import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_activity_difficulty_tier_component.dart';

part 'destiny_activity_difficulty_tier_collection_component.g.dart';

@JsonSerializable()
class DestinyActivityDifficultyTierCollectionComponent{	
	DestinyActivityDifficultyTierCollectionComponent();

	
	@JsonKey(name:'difficultyTierCollectionHash')
	int? difficultyTierCollectionHash;
	
	@JsonKey(name:'difficultyTiers')
	List<DestinyActivityDifficultyTierComponent>? difficultyTiers;

	factory DestinyActivityDifficultyTierCollectionComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityDifficultyTierCollectionComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityDifficultyTierCollectionComponentToJson(this);

	static Future<DestinyActivityDifficultyTierCollectionComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityDifficultyTierCollectionComponent>((json)=>DestinyActivityDifficultyTierCollectionComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}