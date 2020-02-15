import 'package:json_annotation/json_annotation.dart';


part 'destiny_artifact_tier_item_definition.g.dart';

@JsonSerializable()
class DestinyArtifactTierItemDefinition{
	
	DestinyArtifactTierItemDefinition();

	factory DestinyArtifactTierItemDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyArtifactTierItemDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The identifier of the Plug Item unlocked by activating this item in the Artifact.
	@JsonKey(name:'itemHash')
	int itemHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyArtifactTierItemDefinitionToJson(this);
}