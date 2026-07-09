import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_activity_skull_component.dart';

part 'destiny_activity_difficulty_tier_component.g.dart';

@JsonSerializable()
class DestinyActivityDifficultyTierComponent{	
	DestinyActivityDifficultyTierComponent();

	
	@JsonKey(name:'difficultyTierIndex')
	int? difficultyTierIndex;
	
	@JsonKey(name:'fixedActivitySkulls')
	List<DestinyActivitySkullComponent>? fixedActivitySkulls;

	factory DestinyActivityDifficultyTierComponent.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityDifficultyTierComponentFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityDifficultyTierComponentToJson(this);

	static Future<DestinyActivityDifficultyTierComponent> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityDifficultyTierComponent>((json)=>DestinyActivityDifficultyTierComponent.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}