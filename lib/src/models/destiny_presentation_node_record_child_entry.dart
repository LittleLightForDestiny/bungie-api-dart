import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_presentation_node_record_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeRecordChildEntry{	
	DestinyPresentationNodeRecordChildEntry();

	
	@JsonKey(name:'recordHash')
	int? recordHash;
	
	/// Use this value to sort the presentation node children in ascending order.
	@JsonKey(name:'nodeDisplayPriority')
	int? nodeDisplayPriority;

	factory DestinyPresentationNodeRecordChildEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodeRecordChildEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeRecordChildEntryToJson(this);

	static Future<DestinyPresentationNodeRecordChildEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPresentationNodeRecordChildEntry>((json)=>DestinyPresentationNodeRecordChildEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}