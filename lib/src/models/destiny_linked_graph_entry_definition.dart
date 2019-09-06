
import 'package:json_annotation/json_annotation.dart';
part 'destiny_linked_graph_entry_definition.g.dart';

@JsonSerializable()
class DestinyLinkedGraphEntryDefinition {

	@JsonKey(name:'activityGraphHash')
	int activityGraphHash;
	DestinyLinkedGraphEntryDefinition();

	factory DestinyLinkedGraphEntryDefinition.fromJson(Map<String, dynamic> json) => _$DestinyLinkedGraphEntryDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyLinkedGraphEntryDefinitionToJson(this);
}
