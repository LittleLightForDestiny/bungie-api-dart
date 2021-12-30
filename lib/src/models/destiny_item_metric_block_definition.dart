import 'package:json_annotation/json_annotation.dart';


part 'destiny_item_metric_block_definition.g.dart';

/// The metrics available for display and selection on an item.
@JsonSerializable()
class DestinyItemMetricBlockDefinition{	
	DestinyItemMetricBlockDefinition();

	factory DestinyItemMetricBlockDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemMetricBlockDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemMetricBlockDefinitionToJson(this);
	
	/// Hash identifiers for any DestinyPresentationNodeDefinition entry that can be used to list available metrics. Any metric listed directly below these nodes, or in any of these nodes' children will be made available for selection.
	@JsonKey(name:'availableMetricCategoryNodeHashes')
	List<int>? availableMetricCategoryNodeHashes;
}