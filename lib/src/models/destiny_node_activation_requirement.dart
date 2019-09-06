
import 'package:json_annotation/json_annotation.dart';
part 'destiny_node_activation_requirement.g.dart';

/// Talent nodes have requirements that must be met before they can be activated.
/// This describes the material costs, the Level of the Talent Grid&#39;s progression required, and other conditional information that limits whether a talent node can be activated.
@JsonSerializable()
class DestinyNodeActivationRequirement {

	/// The Progression level on the Talent Grid required to activate this node.
	/// See DestinyTalentGridDefinition.progressionHash for the related Progression, and read DestinyProgressionDefinition&#39;s documentation to learn more about Progressions.
	@JsonKey(name:'gridLevel')
	int gridLevel;

	/// The list of hash identifiers for material requirement sets: materials that are required for the node to be activated. See DestinyMaterialRequirementSetDefinition for more information about material requirements.
	/// In this case, only a single DestinyMaterialRequirementSetDefinition will be chosen from this list, and we won&#39;t know which one will be chosen until an instance of the item is created.
	@JsonKey(name:'materialRequirementHashes')
	List<int> materialRequirementHashes;
	DestinyNodeActivationRequirement();

	factory DestinyNodeActivationRequirement.fromJson(Map<String, dynamic> json) => _$DestinyNodeActivationRequirementFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyNodeActivationRequirementToJson(this);
}
