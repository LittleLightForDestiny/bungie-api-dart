import 'destiny_presentation_node_child_entry.dart';
import 'destiny_presentation_node_collectible_child_entry.dart';
import 'destiny_presentation_node_record_child_entry.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_presentation_node_children_block.g.dart';

/// As&#x2F;if presentation nodes begin to host more entities as children, these lists will be added to. One list property exists per type of entity that can be treated as a child of this presentation node, and each holds the identifier of the entity and any associated information needed to display the UI for that entity (if anything)
@JsonSerializable()
class DestinyPresentationNodeChildrenBlock {

	@JsonKey(name:'presentationNodes')
	List<DestinyPresentationNodeChildEntry> presentationNodes;

	@JsonKey(name:'collectibles')
	List<DestinyPresentationNodeCollectibleChildEntry> collectibles;

	@JsonKey(name:'records')
	List<DestinyPresentationNodeRecordChildEntry> records;
	DestinyPresentationNodeChildrenBlock();

	factory DestinyPresentationNodeChildrenBlock.fromJson(Map<String, dynamic> json) => _$DestinyPresentationNodeChildrenBlockFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeChildrenBlockToJson(this);
}
