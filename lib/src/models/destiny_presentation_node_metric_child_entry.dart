import 'package:json_annotation/json_annotation.dart';


part 'destiny_presentation_node_metric_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeMetricChildEntry{	
	DestinyPresentationNodeMetricChildEntry();

	factory DestinyPresentationNodeMetricChildEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodeMetricChildEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeMetricChildEntryToJson(this);
	
	@JsonKey(name:'metricHash')
	int? metricHash;
	
	/// Use this value to sort the presentation node children in ascending order.
	@JsonKey(name:'nodeDisplayPriority')
	int? nodeDisplayPriority;
}