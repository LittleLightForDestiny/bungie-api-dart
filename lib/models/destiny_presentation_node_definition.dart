import 'destiny_display_properties_definition.dart';
import 'destiny_presentation_node_children_block.dart';
import 'destiny_presentation_node_requirements_block.dart';

/* A PresentationNode is an entity that represents a logical grouping of other entities visually/organizationally.
For now, Presentation Nodes may contain the following... but it may be used for more in the future:
- Collectibles - Records (Or, as the public will call them, "Triumphs." Don't ask me why we're overloading the term "Triumph", it still hurts me to think about it) - Other Presentation Nodes, allowing a tree of Presentation Nodes to be created
Part of me wants to break these into conceptual definitions per entity being collected, but the possibility of these different types being mixed in the same UI and the possibility that it could actually be more useful to return the "bare metal" presentation node concept has resulted in me deciding against that for the time being.
We'll see if I come to regret this as well. */
class DestinyPresentationNodeDefinition{
	
	/*  */
	DestinyDisplayPropertiesDefinition displayProperties;
	
	/* The original icon for this presentation node, before we futzed with it. */
	String originalIcon;
	
	/* Some presentation nodes are meant to be explicitly shown on the "root" or "entry" screens for the feature to which they are related. You should use this icon when showing them on such a view, if you have a similar "entry point" view in your UI. If you don't have a UI, then I guess it doesn't matter either way does it? */
	String rootViewIcon;
	
	/*  */
	int nodeType;
	
	/* Indicates whether this presentation node's state is determined on a per-character or on an account-wide basis. */
	int scope;
	
	/* If this presentation node shows a related objective (for instance, if it tracks the progress of its children), the objective being tracked is indicated here. */
	int objectiveHash;
	
	/* If this presentation node has an associated "Record" that you can accomplish for completing its children, this is the identifier of that Record. */
	int completionRecordHash;
	
	/* The child entities contained by this presentation node. */
	DestinyPresentationNodeChildrenBlock children;
	
	/* A hint for how to display this presentation node when it's shown in a list. */
	int displayStyle;
	
	/* A hint for how to display this presentation node when it's shown in its own detail screen. */
	int screenStyle;
	
	/* The requirements for being able to interact with this presentation node and its children. */
	DestinyPresentationNodeRequirementsBlock requirements;
	
	/* If this presentation node has children, but the game doesn't let you inspect the details of those children, that is indicated here. */
	bool disableChildSubscreenNavigation;
	
	/* A quick reference to presentation nodes that have this node as a child. (presentation nodes can be parented under multiple parents) */
	List<int> parentNodeHashes;
	
	/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
When entities refer to each other in Destiny content, it is this hash that they are referring to. */
	int hash;
	
	/* The index of the entity as it was found in the investment tables. */
	int index;
	
	/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
	bool redacted;
	DestinyPresentationNodeDefinition(
		this.displayProperties,
		this.originalIcon,
		this.rootViewIcon,
		this.nodeType,
		this.scope,
		this.objectiveHash,
		this.completionRecordHash,
		this.children,
		this.displayStyle,
		this.screenStyle,
		this.requirements,
		this.disableChildSubscreenNavigation,
		this.parentNodeHashes,
		this.hash,
		this.index,
		this.redacted,
	);

	static DestinyPresentationNodeDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPresentationNodeDefinition(
				data['displayProperties'] != null ? DestinyDisplayPropertiesDefinition.fromMap(data['displayProperties']) : null,
				data['originalIcon'],
				data['rootViewIcon'],
				data['nodeType'],
				data['scope'],
				data['objectiveHash'],
				data['completionRecordHash'],
				data['children'] != null ? DestinyPresentationNodeChildrenBlock.fromMap(data['children']) : null,
				data['displayStyle'],
				data['screenStyle'],
				data['requirements'] != null ? DestinyPresentationNodeRequirementsBlock.fromMap(data['requirements']) : null,
				data['disableChildSubscreenNavigation'],
				data['parentNodeHashes'] != null ? data['parentNodeHashes']?.cast<int>() ?? null : null,
				data['hash'],
				data['index'],
				data['redacted'],
		);
	}

	static List<DestinyPresentationNodeDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPresentationNodeDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyPresentationNodeDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['displayProperties'] = this.displayProperties.toMap();
			data['originalIcon'] = this.originalIcon;
			data['rootViewIcon'] = this.rootViewIcon;
			data['nodeType'] = this.nodeType;
			data['scope'] = this.scope;
			data['objectiveHash'] = this.objectiveHash;
			data['completionRecordHash'] = this.completionRecordHash;
			data['children'] = this.children;
			data['displayStyle'] = this.displayStyle;
			data['screenStyle'] = this.screenStyle;
			data['requirements'] = this.requirements;
			data['disableChildSubscreenNavigation'] = this.disableChildSubscreenNavigation;
			data['parentNodeHashes'] = this.parentNodeHashes;
			data['hash'] = this.hash;
			data['index'] = this.index;
			data['redacted'] = this.redacted;
		return data;
	}
}