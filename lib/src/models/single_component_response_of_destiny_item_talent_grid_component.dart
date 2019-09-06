import 'destiny_item_talent_grid_component.dart';

import 'package:json_annotation/json_annotation.dart';
part 'single_component_response_of_destiny_item_talent_grid_component.g.dart';

@JsonSerializable()
class SingleComponentResponseOfDestinyItemTalentGridComponent {

	/// Well, we&#39;re here in Destiny 2, and Talent Grids are unfortunately still around.
	/// The good news is that they&#39;re pretty much only being used for certain base information on items and for Builds&#x2F;Subclasses. The bad news is that they still suck. If you really want this information, grab this component.
	/// An important note is that talent grids are defined as such:
	/// A Grid has 1:M Nodes, which has 1:M Steps.
	/// Any given node can only have a single step active at one time, which represents the actual visual contents and effects of the Node (for instance, if you see a &quot;Super Cool Bonus&quot; node, the actual icon and text for the node is coming from the current Step of that node).
	/// Nodes can be grouped into exclusivity sets *and* as of D2, exclusivity groups (which are collections of exclusivity sets that affect each other).
	/// See DestinyTalentGridDefinition for more information. Brace yourself, the water&#39;s cold out there in the deep end.
	@JsonKey(name:'data')
	DestinyItemTalentGridComponent data;

	@JsonKey(name:'privacy')
	int privacy;
	SingleComponentResponseOfDestinyItemTalentGridComponent();

	factory SingleComponentResponseOfDestinyItemTalentGridComponent.fromJson(Map<String, dynamic> json) => _$SingleComponentResponseOfDestinyItemTalentGridComponentFromJson(json);
	
	Map<String, dynamic> toJson() => _$SingleComponentResponseOfDestinyItemTalentGridComponentToJson(this);
}
