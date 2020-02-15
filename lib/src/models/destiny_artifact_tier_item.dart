import 'package:json_annotation/json_annotation.dart';


part 'destiny_artifact_tier_item.g.dart';

@JsonSerializable()
class DestinyArtifactTierItem{
	
	DestinyArtifactTierItem();

	factory DestinyArtifactTierItem.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyArtifactTierItemFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'itemHash')
	int itemHash;
	@JsonKey(name:'isActive')
	bool isActive;

	
	
	Map<String, dynamic> toJson() => _$DestinyArtifactTierItemToJson(this);
}