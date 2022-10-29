import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_presentation_node_metric_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeMetricChildEntry{	
	DestinyPresentationNodeMetricChildEntry();

	
	@JsonKey(name:'metricHash')
	int? metricHash;
	
	/// Use this value to sort the presentation node children in ascending order.
	@JsonKey(name:'nodeDisplayPriority')
	int? nodeDisplayPriority;

	factory DestinyPresentationNodeMetricChildEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodeMetricChildEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeMetricChildEntryToJson(this);

	static Future<DestinyPresentationNodeMetricChildEntry> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPresentationNodeMetricChildEntry>((json)=>DestinyPresentationNodeMetricChildEntry.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}