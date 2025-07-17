import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_difficulty_tier_subcategory_override.g.dart';

@JsonSerializable()
class DestinyActivityDifficultyTierSubcategoryOverride{	
	DestinyActivityDifficultyTierSubcategoryOverride();

	
	@JsonKey(name:'skullSubcategoryHash')
	int? skullSubcategoryHash;
	
	@JsonKey(name:'refreshTimeMinutes')
	int? refreshTimeMinutes;
	
	@JsonKey(name:'refreshTimeOffsetMinutes')
	int? refreshTimeOffsetMinutes;

	factory DestinyActivityDifficultyTierSubcategoryOverride.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityDifficultyTierSubcategoryOverrideFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityDifficultyTierSubcategoryOverrideToJson(this);

	static Future<DestinyActivityDifficultyTierSubcategoryOverride> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityDifficultyTierSubcategoryOverride>((json)=>DestinyActivityDifficultyTierSubcategoryOverride.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}