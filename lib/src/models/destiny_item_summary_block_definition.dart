import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_item_summary_block_definition.g.dart';

/// This appears to be information used when rendering rewards. We don&#39;t currently use it on BNet.
@JsonSerializable()
class DestinyItemSummaryBlockDefinition{	
	DestinyItemSummaryBlockDefinition();

	
	/// Apparently when rendering an item in a reward, this should be used as a sort priority. We're not doing it presently.
	@JsonKey(name:'sortPriority')
	int? sortPriority;

	factory DestinyItemSummaryBlockDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemSummaryBlockDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemSummaryBlockDefinitionToJson(this);

	static Future<DestinyItemSummaryBlockDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemSummaryBlockDefinition>((json)=>DestinyItemSummaryBlockDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}