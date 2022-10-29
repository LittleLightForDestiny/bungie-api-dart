import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_artifact_tier_item.dart';

part 'destiny_artifact_tier.g.dart';

@JsonSerializable()
class DestinyArtifactTier{	
	DestinyArtifactTier();

	
	@JsonKey(name:'tierHash')
	int? tierHash;
	
	@JsonKey(name:'isUnlocked')
	bool? isUnlocked;
	
	@JsonKey(name:'pointsToUnlock')
	int? pointsToUnlock;
	
	@JsonKey(name:'items')
	List<DestinyArtifactTierItem>? items;

	factory DestinyArtifactTier.fromJson(Map<String, dynamic> json) {
		return _$DestinyArtifactTierFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyArtifactTierToJson(this);

	static Future<DestinyArtifactTier> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyArtifactTier>((json)=>DestinyArtifactTier.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}