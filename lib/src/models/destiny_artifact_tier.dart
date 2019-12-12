import 'package:json_annotation/json_annotation.dart';

import 'destiny_artifact_tier_item.dart';

part 'destiny_artifact_tier.g.dart';

@JsonSerializable()
class DestinyArtifactTier{
	
	DestinyArtifactTier();

	factory DestinyArtifactTier.fromJson(Map<String, dynamic> json) => _$DestinyArtifactTierFromJson(json);

	@JsonKey(name:'tierHash')
	int tierHash;
	@JsonKey(name:'isUnlocked')
	bool isUnlocked;
	@JsonKey(name:'pointsToUnlock')
	int pointsToUnlock;
	@JsonKey(name:'items')
	List<DestinyArtifactTierItem> items;

	
	
	Map<String, dynamic> toJson() => _$DestinyArtifactTierToJson(this);
}