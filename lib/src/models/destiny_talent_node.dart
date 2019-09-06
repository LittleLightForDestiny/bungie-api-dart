import 'destiny_material_requirement.dart';
import 'destiny_talent_node_stat_block.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_talent_node.g.dart';

/// I see you&#39;ve come to find out more about Talent Nodes. I&#39;m so sorry. Talent Nodes are the conceptual, visual nodes that appear on Talent Grids. Talent Grids, in Destiny 1, were found on almost every instanced item: they had Nodes that could be activated to change the properties of the item. In Destiny 2, Talent Grids only exist for Builds&#x2F;Subclasses, and while the basic concept is the same (Nodes can be activated once you&#39;ve gained sufficient Experience on the Item, and provide effects), there are some new concepts from Destiny 1. Examine DestinyTalentGridDefinition and its subordinates for more information. This is the &quot;Live&quot; information for the current status of a Talent Node on a specific item. Talent Nodes have many Steps, but only one can be active at any one time: and it is the Step that determines both the visual and the game state-changing properties that the Node provides. Examine this and DestinyTalentNodeStepDefinition carefully. *IMPORTANT NOTE* Talent Nodes are, unfortunately, Content Version DEPENDENT. Though they refer to hashes for Nodes and Steps, those hashes are not guaranteed to be immutable across content versions. This is a source of great exasperation for me, but as a result anyone using Talent Grid data must ensure that the content version of their static content matches that of the server responses before showing or making decisions based on talent grid data.
@JsonSerializable()
class DestinyTalentNode {

	/// The index of the Talent Node being referred to (an index into DestinyTalentGridDefinition.nodes[]). CONTENT VERSION DEPENDENT.
	@JsonKey(name:'nodeIndex')
	int nodeIndex;

	/// The hash of the Talent Node being referred to (in DestinyTalentGridDefinition.nodes). Deceptively CONTENT VERSION DEPENDENT. We have no guarantee of the hash&#39;s immutability between content versions.
	@JsonKey(name:'nodeHash')
	int nodeHash;

	/// An DestinyTalentNodeState enum value indicating the node&#39;s state: whether it can be activated or swapped, and why not if neither can be performed.
	@JsonKey(name:'state')
	int state;

	/// If true, the node is activated: it&#39;s current step then provides its benefits.
	@JsonKey(name:'isActivated')
	bool isActivated;

	/// The currently relevant Step for the node. It is this step that has rendering data for the node and the benefits that are provided if the node is activated. (the actual rules for benefits provided are extremely complicated in theory, but with how Talent Grids are being used in Destiny 2 you don&#39;t have to worry about a lot of those old Destiny 1 rules.) This is an index into: DestinyTalentGridDefinition.nodes[nodeIndex].steps[stepIndex]
	@JsonKey(name:'stepIndex')
	int stepIndex;

	/// If the node has material requirements to be activated, this is the list of those requirements.
	@JsonKey(name:'materialsToUpgrade')
	List<DestinyMaterialRequirement> materialsToUpgrade;

	/// The progression level required on the Talent Grid in order to be able to activate this talent node. Talent Grids have their own Progression - similar to Character Level, but in this case it is experience related to the item itself.
	@JsonKey(name:'activationGridLevel')
	int activationGridLevel;

	/// If you want to show a progress bar or circle for how close this talent node is to being activate-able, this is the percentage to show. It follows the node&#39;s underlying rules about when the progress bar should first show up, and when it should be filled.
	@JsonKey(name:'progressPercent')
	double progressPercent;

	/// Whether or not the talent node is actually visible in the game&#39;s UI. Whether you want to show it in your own UI is up to you! I&#39;m not gonna tell you who to sock it to.
	@JsonKey(name:'hidden')
	bool hidden;

	/// This property has some history. A talent grid can provide stats on both the item it&#39;s related to and the character equipping the item. This returns data about those stat bonuses.
	@JsonKey(name:'nodeStatsBlock')
	DestinyTalentNodeStatBlock nodeStatsBlock;
	DestinyTalentNode();

	factory DestinyTalentNode.fromJson(Map<String, dynamic> json) => _$DestinyTalentNodeFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyTalentNodeToJson(this);
}
