import 'destiny_talent_node.dart';
import 'destiny_progression.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_talent_grid_component.g.dart';

/// Well, we&#39;re here in Destiny 2, and Talent Grids are unfortunately still around.
/// The good news is that they&#39;re pretty much only being used for certain base information on items and for Builds&#x2F;Subclasses. The bad news is that they still suck. If you really want this information, grab this component.
/// An important note is that talent grids are defined as such:
/// A Grid has 1:M Nodes, which has 1:M Steps.
/// Any given node can only have a single step active at one time, which represents the actual visual contents and effects of the Node (for instance, if you see a &quot;Super Cool Bonus&quot; node, the actual icon and text for the node is coming from the current Step of that node).
/// Nodes can be grouped into exclusivity sets *and* as of D2, exclusivity groups (which are collections of exclusivity sets that affect each other).
/// See DestinyTalentGridDefinition for more information. Brace yourself, the water&#39;s cold out there in the deep end.
@JsonSerializable()
class DestinyItemTalentGridComponent {

	/// Most items don&#39;t have useful talent grids anymore, but Builds in particular still do.
	/// You can use this hash to lookup the DestinyTalentGridDefinition attached to this item, which will be crucial for understanding the node values on the item.
	@JsonKey(name:'talentGridHash')
	int talentGridHash;

	/// Detailed information about the individual nodes in the talent grid.
	/// A node represents a single visual &quot;pip&quot; in the talent grid or Build detail view, though each node may have multiple &quot;steps&quot; which indicate the actual bonuses and visual representation of that node.
	@JsonKey(name:'nodes')
	List<DestinyTalentNode> nodes;

	/// Indicates whether the talent grid on this item is completed, and thus whether it should have a gold border around it.
	/// Only will be true if the item actually *has* a talent grid, and only then if it is completed (i.e. every exclusive set has an activated node, and every non-exclusive set node has been activated)
	@JsonKey(name:'isGridComplete')
	bool isGridComplete;

	/// If the item has a progression, it will be detailed here. A progression means that the item can gain experience. Thresholds of experience are what determines whether and when a talent node can be activated.
	@JsonKey(name:'gridProgression')
	DestinyProgression gridProgression;
	DestinyItemTalentGridComponent();

	factory DestinyItemTalentGridComponent.fromJson(Map<String, dynamic> json) => _$DestinyItemTalentGridComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemTalentGridComponentToJson(this);
}
