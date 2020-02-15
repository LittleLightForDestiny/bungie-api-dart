import 'package:json_annotation/json_annotation.dart';


part 'destiny_linked_graph_entry_definition.g.dart';

@JsonSerializable()
class DestinyLinkedGraphEntryDefinition{
	
	DestinyLinkedGraphEntryDefinition();

	factory DestinyLinkedGraphEntryDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyLinkedGraphEntryDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'activityGraphHash')
	int activityGraphHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyLinkedGraphEntryDefinitionToJson(this);
}