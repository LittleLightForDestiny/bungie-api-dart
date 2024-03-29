import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_presentation_node_child_entry.dart';
import 'destiny_presentation_node_collectible_child_entry.dart';
import 'destiny_presentation_node_record_child_entry.dart';
import 'destiny_presentation_node_metric_child_entry.dart';
import 'destiny_presentation_node_craftable_child_entry.dart';

part 'destiny_presentation_node_children_block.g.dart';

/// As&#x2F;if presentation nodes begin to host more entities as children, these lists will be added to. One list property exists per type of entity that can be treated as a child of this presentation node, and each holds the identifier of the entity and any associated information needed to display the UI for that entity (if anything)
@JsonSerializable()
class DestinyPresentationNodeChildrenBlock{	
	DestinyPresentationNodeChildrenBlock();

	
	@JsonKey(name:'presentationNodes')
	List<DestinyPresentationNodeChildEntry>? presentationNodes;
	
	@JsonKey(name:'collectibles')
	List<DestinyPresentationNodeCollectibleChildEntry>? collectibles;
	
	@JsonKey(name:'records')
	List<DestinyPresentationNodeRecordChildEntry>? records;
	
	@JsonKey(name:'metrics')
	List<DestinyPresentationNodeMetricChildEntry>? metrics;
	
	@JsonKey(name:'craftables')
	List<DestinyPresentationNodeCraftableChildEntry>? craftables;

	factory DestinyPresentationNodeChildrenBlock.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodeChildrenBlockFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeChildrenBlockToJson(this);

	static Future<DestinyPresentationNodeChildrenBlock> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPresentationNodeChildrenBlock>((json)=>DestinyPresentationNodeChildrenBlock.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}