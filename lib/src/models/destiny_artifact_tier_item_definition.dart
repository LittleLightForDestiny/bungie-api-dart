import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_artifact_tier_item_definition.g.dart';

@JsonSerializable()
class DestinyArtifactTierItemDefinition{	
	DestinyArtifactTierItemDefinition();

	
	/// The identifier of the Plug Item unlocked by activating this item in the Artifact.
	@JsonKey(name:'itemHash')
	int? itemHash;

	factory DestinyArtifactTierItemDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyArtifactTierItemDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyArtifactTierItemDefinitionToJson(this);

	static Future<DestinyArtifactTierItemDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyArtifactTierItemDefinition>((json)=>DestinyArtifactTierItemDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}