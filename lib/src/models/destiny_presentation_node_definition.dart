import 'package:json_annotation/json_annotation.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/destiny_presentation_node_type.dart';
import '../enums/destiny_scope.dart';
import 'destiny_presentation_node_children_block.dart';
import '../enums/destiny_presentation_display_style.dart';
import '../enums/destiny_presentation_screen_style.dart';
import 'destiny_presentation_node_requirements_block.dart';

part 'destiny_presentation_node_definition.g.dart';

/// A PresentationNode is an entity that represents a logical grouping of other entities visually&#x2F;organizationally.
/// For now, Presentation Nodes may contain the following... but it may be used for more in the future:
/// - Collectibles - Records (Or, as the public will call them, &quot;Triumphs.&quot; Don&#39;t ask me why we&#39;re overloading the term &quot;Triumph&quot;, it still hurts me to think about it) - Metrics (aka Stat Trackers) - Other Presentation Nodes, allowing a tree of Presentation Nodes to be created
/// Part of me wants to break these into conceptual definitions per entity being collected, but the possibility of these different types being mixed in the same UI and the possibility that it could actually be more useful to return the &quot;bare metal&quot; presentation node concept has resulted in me deciding against that for the time being.
/// We&#39;ll see if I come to regret this as well.
@JsonSerializable()
class DestinyPresentationNodeDefinition{
	
	DestinyPresentationNodeDefinition();

	factory DestinyPresentationNodeDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyPresentationNodeDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;
	/// The original icon for this presentation node, before we futzed with it.
	@JsonKey(name:'originalIcon')
	String originalIcon;
	/// Some presentation nodes are meant to be explicitly shown on the "root" or "entry" screens for the feature to which they are related. You should use this icon when showing them on such a view, if you have a similar "entry point" view in your UI. If you don't have a UI, then I guess it doesn't matter either way does it?
	@JsonKey(name:'rootViewIcon')
	String rootViewIcon;
	@JsonKey(name:'nodeType',unknownEnumValue:DestinyPresentationNodeType.ProtectedInvalidEnumValue)
	DestinyPresentationNodeType nodeType;
	/// Indicates whether this presentation node's state is determined on a per-character or on an account-wide basis.
	@JsonKey(name:'scope',unknownEnumValue:DestinyScope.ProtectedInvalidEnumValue)
	DestinyScope scope;
	/// If this presentation node shows a related objective (for instance, if it tracks the progress of its children), the objective being tracked is indicated here.
	@JsonKey(name:'objectiveHash')
	int objectiveHash;
	/// If this presentation node has an associated "Record" that you can accomplish for completing its children, this is the identifier of that Record.
	@JsonKey(name:'completionRecordHash')
	int completionRecordHash;
	/// The child entities contained by this presentation node.
	@JsonKey(name:'children')
	DestinyPresentationNodeChildrenBlock children;
	/// A hint for how to display this presentation node when it's shown in a list.
	@JsonKey(name:'displayStyle',unknownEnumValue:DestinyPresentationDisplayStyle.ProtectedInvalidEnumValue)
	DestinyPresentationDisplayStyle displayStyle;
	/// A hint for how to display this presentation node when it's shown in its own detail screen.
	@JsonKey(name:'screenStyle',unknownEnumValue:DestinyPresentationScreenStyle.ProtectedInvalidEnumValue)
	DestinyPresentationScreenStyle screenStyle;
	/// The requirements for being able to interact with this presentation node and its children.
	@JsonKey(name:'requirements')
	DestinyPresentationNodeRequirementsBlock requirements;
	/// If this presentation node has children, but the game doesn't let you inspect the details of those children, that is indicated here.
	@JsonKey(name:'disableChildSubscreenNavigation')
	bool disableChildSubscreenNavigation;
	@JsonKey(name:'maxCategoryRecordScore')
	int maxCategoryRecordScore;
	@JsonKey(name:'presentationNodeType',unknownEnumValue:DestinyPresentationNodeType.ProtectedInvalidEnumValue)
	DestinyPresentationNodeType presentationNodeType;
	@JsonKey(name:'traitIds')
	List<String> traitIds;
	@JsonKey(name:'traitHashes')
	List<int> traitHashes;
	/// A quick reference to presentation nodes that have this node as a child. Presentation nodes can be parented under multiple parents.
	@JsonKey(name:'parentNodeHashes')
	List<int> parentNodeHashes;
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;

	
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeDefinitionToJson(this);
}