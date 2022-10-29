import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_presentation_node_collectible_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeCollectibleChildEntry{	
	DestinyPresentationNodeCollectibleChildEntry();

	
	@JsonKey(name:'collectibleHash')
	int? collectibleHash;
	
	/// Use this value to sort the presentation node children in ascending order.
	@JsonKey(name:'nodeDisplayPriority')
	int? nodeDisplayPriority;

	factory DestinyPresentationNodeCollectibleChildEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodeCollectibleChildEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeCollectibleChildEntryToJson(this);

	static Future<DestinyPresentationNodeCollectibleChildEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPresentationNodeCollectibleChildEntry>((json)=>DestinyPresentationNodeCollectibleChildEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}