import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_linked_graph_entry_definition.g.dart';

@JsonSerializable()
class DestinyLinkedGraphEntryDefinition{	
	DestinyLinkedGraphEntryDefinition();

	
	@JsonKey(name:'activityGraphHash')
	int? activityGraphHash;

	factory DestinyLinkedGraphEntryDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyLinkedGraphEntryDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyLinkedGraphEntryDefinitionToJson(this);

	static Future<DestinyLinkedGraphEntryDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyLinkedGraphEntryDefinition>((json)=>DestinyLinkedGraphEntryDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}