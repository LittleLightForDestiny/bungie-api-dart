import 'package:json_annotation/json_annotation.dart';


part 'destiny_presentation_node_collectible_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeCollectibleChildEntry{	
	DestinyPresentationNodeCollectibleChildEntry();

	factory DestinyPresentationNodeCollectibleChildEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodeCollectibleChildEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeCollectibleChildEntryToJson(this);
	
	@JsonKey(name:'collectibleHash')
	int? collectibleHash;
	
	/// Use this value to sort the presentation node children in ascending order.
	@JsonKey(name:'nodeDisplayPriority')
	int? nodeDisplayPriority;
}