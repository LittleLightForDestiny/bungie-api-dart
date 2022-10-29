import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_artifact_tier_item.g.dart';

@JsonSerializable()
class DestinyArtifactTierItem{	
	DestinyArtifactTierItem();

	
	@JsonKey(name:'itemHash')
	int? itemHash;
	
	@JsonKey(name:'isActive')
	bool? isActive;

	factory DestinyArtifactTierItem.fromJson(Map<String, dynamic> json) {
		return _$DestinyArtifactTierItemFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyArtifactTierItemToJson(this);

	static Future<DestinyArtifactTierItem> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyArtifactTierItem>((json)=>DestinyArtifactTierItem.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}