
import 'package:json_annotation/json_annotation.dart';
part 'destiny_item_summary_block_definition.g.dart';

/// This appears to be information used when rendering rewards. We don&#39;t currently use it on BNet.
@JsonSerializable()
class DestinyItemSummaryBlockDefinition {

	/// Apparently when rendering an item in a reward, this should be used as a sort priority. We&#39;re not doing it presently.
	@JsonKey(name:'sortPriority')
	int sortPriority;
	DestinyItemSummaryBlockDefinition();

	factory DestinyItemSummaryBlockDefinition.fromJson(Map<String, dynamic> json) => _$DestinyItemSummaryBlockDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyItemSummaryBlockDefinitionToJson(this);
}
