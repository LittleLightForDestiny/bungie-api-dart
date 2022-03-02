import 'package:json_annotation/json_annotation.dart';


part 'destiny_presentation_node_craftable_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeCraftableChildEntry{	
	DestinyPresentationNodeCraftableChildEntry();

	factory DestinyPresentationNodeCraftableChildEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodeCraftableChildEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeCraftableChildEntryToJson(this);
	
	@JsonKey(name:'craftableItemHash')
	int? craftableItemHash;
	
	/// Use this value to sort the presentation node children in ascending order.
	@JsonKey(name:'nodeDisplayPriority')
	int? nodeDisplayPriority;
}