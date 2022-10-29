import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_presentation_node_craftable_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeCraftableChildEntry{	
	DestinyPresentationNodeCraftableChildEntry();

	
	@JsonKey(name:'craftableItemHash')
	int? craftableItemHash;
	
	/// Use this value to sort the presentation node children in ascending order.
	@JsonKey(name:'nodeDisplayPriority')
	int? nodeDisplayPriority;

	factory DestinyPresentationNodeCraftableChildEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodeCraftableChildEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeCraftableChildEntryToJson(this);

	static Future<DestinyPresentationNodeCraftableChildEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPresentationNodeCraftableChildEntry>((json)=>DestinyPresentationNodeCraftableChildEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}