import 'destiny_node_activation_requirement.dart';
import 'destiny_node_step_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_talent_node_definition.g.dart';

/// Talent Grids on items have Nodes. These nodes have positions in the talent grid&#39;s UI, and contain &quot;Steps&quot; (DestinyTalentNodeStepDefinition), one of whom will be the &quot;Current&quot; step.
/// The Current Step determines the visual properties of the node, as well as what the node grants when it is activated.
/// See DestinyTalentGridDefinition for a more complete overview of how Talent Grids work, and how they are used in Destiny 2 (and how they were used in Destiny 1).
@JsonSerializable()
class DestinyTalentNodeDefinition {

	/// The index into the DestinyTalentGridDefinition&#39;s &quot;nodes&quot; property where this node is located. Used to uniquely identify the node within the Talent Grid. Note that this is content version dependent: make sure you have the latest version of content before trying to use these properties.
	@JsonKey(name:'nodeIndex')
	int nodeIndex;

	/// The hash identifier for the node, which unfortunately is also content version dependent but can be (and ideally, should be) used instead of the nodeIndex to uniquely identify the node.
	/// The two exist side-by-side for backcompat reasons due to the Great Talent Node Restructuring of Destiny 1, and I ran out of time to remove one of them and standardize on the other. Sorry!
	@JsonKey(name:'nodeHash')
	int nodeHash;

	/// The visual &quot;row&quot; where the node should be shown in the UI. If negative, then the node is hidden.
	@JsonKey(name:'row')
	int row;

	/// The visual &quot;column&quot; where the node should be shown in the UI. If negative, the node is hidden.
	@JsonKey(name:'column')
	int column;

	/// Indexes into the DestinyTalentGridDefinition.nodes property for any nodes that must be activated before this one is allowed to be activated.
	/// I would have liked to change this to hashes for Destiny 2, but we have run out of time.
	@JsonKey(name:'prerequisiteNodeIndexes')
	List<int> prerequisiteNodeIndexes;

	/// At one point, Talent Nodes supported the idea of &quot;Binary Pairs&quot;: nodes that overlapped each other visually, and where activating one deactivated the other. They ended up not being used, mostly because Exclusive Sets are *almost* a superset of this concept, but the potential for it to be used still exists in theory.
	/// If this is ever used, this will be the index into the DestinyTalentGridDefinition.nodes property for the node that is the binary pair match to this node. Activating one deactivates the other.
	@JsonKey(name:'binaryPairNodeIndex')
	int binaryPairNodeIndex;

	/// If true, this node will automatically unlock when the Talent Grid&#39;s level reaches the required level of the current step of this node.
	@JsonKey(name:'autoUnlocks')
	bool autoUnlocks;

	/// At one point, Nodes were going to be able to be activated multiple times, changing the current step and potentially piling on multiple effects from the previously activated steps. This property would indicate if the last step could be activated multiple times. 
	/// This is not currently used, but it isn&#39;t out of the question that this could end up being used again in a theoretical future.
	@JsonKey(name:'lastStepRepeats')
	bool lastStepRepeats;

	/// If this is true, the node&#39;s step is determined randomly rather than the first step being chosen.
	@JsonKey(name:'isRandom')
	bool isRandom;

	/// At one point, you were going to be able to repurchase talent nodes that had random steps, to &quot;re-roll&quot; the current step of the node (and thus change the properties of your item). This was to be the activation requirement for performing that re-roll.
	/// The system still exists to do this, as far as I know, so it may yet come back around!
	@JsonKey(name:'randomActivationRequirement')
	DestinyNodeActivationRequirement randomActivationRequirement;

	/// If this is true, the node can be &quot;re-rolled&quot; to acquire a different random current step. This is not used, but still exists for a theoretical future of talent grids.
	@JsonKey(name:'isRandomRepurchasable')
	bool isRandomRepurchasable;

	/// At this point, &quot;steps&quot; have been obfuscated into conceptual entities, aggregating the underlying notions of &quot;properties&quot; and &quot;true steps&quot;.
	/// If you need to know a step as it truly exists - such as when recreating Node logic when processing Vendor data - you&#39;ll have to use the &quot;realSteps&quot; property below.
	@JsonKey(name:'steps')
	List<DestinyNodeStepDefinition> steps;

	/// The nodeHash values for nodes that are in an Exclusive Set with this node.
	/// See DestinyTalentGridDefinition.exclusiveSets for more info about exclusive sets.
	/// Again, note that these are nodeHashes and *not* nodeIndexes.
	@JsonKey(name:'exclusiveWithNodeHashes')
	List<int> exclusiveWithNodeHashes;

	/// If the node&#39;s step is randomly selected, this is the amount of the Talent Grid&#39;s progression experience at which the progression bar for the node should be shown.
	@JsonKey(name:'randomStartProgressionBarAtProgression')
	int randomStartProgressionBarAtProgression;

	/// A string identifier for a custom visual layout to apply to this talent node. Unfortunately, we do not have any data for rendering these custom layouts. It will be up to you to interpret these strings and change your UI if you want to have custom UI matching these layouts.
	@JsonKey(name:'layoutIdentifier')
	String layoutIdentifier;

	/// As of Destiny 2, nodes can exist as part of &quot;Exclusive Groups&quot;. These differ from exclusive sets in that, within the group, many nodes can be activated. But the act of activating any node in the group will cause &quot;opposing&quot; nodes (nodes in groups that are not allowed to be activated at the same time as this group) to deactivate.
	/// See DestinyTalentExclusiveGroup for more information on the details. This is an identifier for this node&#39;s group, if it is part of one.
	@JsonKey(name:'groupHash')
	int groupHash;

	/// Talent nodes can be associated with a piece of Lore, generally rendered in a tooltip. This is the hash identifier of the lore element to show, if there is one to be show.
	@JsonKey(name:'loreHash')
	int loreHash;

	/// Comes from the talent grid node style: this identifier should be used to determine how to render the node in the UI.
	@JsonKey(name:'nodeStyleIdentifier')
	String nodeStyleIdentifier;

	/// Comes from the talent grid node style: if true, then this node should be ignored for determining whether the grid is complete.
	@JsonKey(name:'ignoreForCompletion')
	bool ignoreForCompletion;
	DestinyTalentNodeDefinition();

	factory DestinyTalentNodeDefinition.fromJson(Map<String, dynamic> json) => _$DestinyTalentNodeDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyTalentNodeDefinitionToJson(this);
}
