
import 'package:json_annotation/json_annotation.dart';
part 'destiny_artifact_tier_item.g.dart';

@JsonSerializable()
class DestinyArtifactTierItem{
	
	@JsonKey(name:'itemHash')
	int itemHash;
	
	@JsonKey(name:'isActive')
	bool isActive;
	DestinyArtifactTierItem();

	factory DestinyArtifactTierItem.fromJson(Map<String, dynamic> json) => _$DestinyArtifactTierItemFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyArtifactTierItemToJson(this);
}