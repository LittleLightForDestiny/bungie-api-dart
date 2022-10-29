import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_presentation_node_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeChildEntry{	
	DestinyPresentationNodeChildEntry();

	
	@JsonKey(name:'presentationNodeHash')
	int? presentationNodeHash;
	
	/// Use this value to sort the presentation node children in ascending order.
	@JsonKey(name:'nodeDisplayPriority')
	int? nodeDisplayPriority;

	factory DestinyPresentationNodeChildEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodeChildEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeChildEntryToJson(this);

	static Future<DestinyPresentationNodeChildEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPresentationNodeChildEntry>((json)=>DestinyPresentationNodeChildEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}