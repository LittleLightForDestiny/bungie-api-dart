import 'destiny_artifact_tier_item_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_artifact_tier_definition.g.dart';

@JsonSerializable()
class DestinyArtifactTierDefinition{
	
	/// An identifier, unique within the Artifact, for this specific tier.
	@JsonKey(name:'tierHash')
	int tierHash;
	
	/// The human readable title of this tier, if any.
	@JsonKey(name:'displayTitle')
	String displayTitle;
	
	/// A string representing the localized minimum requirement text for this Tier, if any.
	@JsonKey(name:'progressRequirementMessage')
	String progressRequirementMessage;
	
	/// The items that can be earned within this tier.
	@JsonKey(name:'items')
	List<DestinyArtifactTierItemDefinition> items;
	
	/// The minimum number of &quot;unlock points&quot; that you must have used before you can unlock items from this tier.
	@JsonKey(name:'minimumUnlockPointsUsedRequirement')
	int minimumUnlockPointsUsedRequirement;
	DestinyArtifactTierDefinition();

	factory DestinyArtifactTierDefinition.fromJson(Map<String, dynamic> json) => _$DestinyArtifactTierDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyArtifactTierDefinitionToJson(this);
}