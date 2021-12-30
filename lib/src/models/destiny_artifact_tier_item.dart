import 'package:json_annotation/json_annotation.dart';


part 'destiny_artifact_tier_item.g.dart';

@JsonSerializable()
class DestinyArtifactTierItem{	
	DestinyArtifactTierItem();

	factory DestinyArtifactTierItem.fromJson(Map<String, dynamic> json) {
		return _$DestinyArtifactTierItemFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyArtifactTierItemToJson(this);
	
	@JsonKey(name:'itemHash')
	int? itemHash;
	
	@JsonKey(name:'isActive')
	bool? isActive;
}