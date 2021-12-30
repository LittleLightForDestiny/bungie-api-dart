import 'package:json_annotation/json_annotation.dart';


part 'destiny_artifact_tier_item_definition.g.dart';

@JsonSerializable()
class DestinyArtifactTierItemDefinition{	
	DestinyArtifactTierItemDefinition();

	factory DestinyArtifactTierItemDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyArtifactTierItemDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyArtifactTierItemDefinitionToJson(this);
	
	/// The identifier of the Plug Item unlocked by activating this item in the Artifact.
	@JsonKey(name:'itemHash')
	int? itemHash;
}