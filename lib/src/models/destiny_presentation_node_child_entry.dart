import 'package:json_annotation/json_annotation.dart';


part 'destiny_presentation_node_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeChildEntry{
	
	DestinyPresentationNodeChildEntry();

	factory DestinyPresentationNodeChildEntry.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyPresentationNodeChildEntryFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'presentationNodeHash')
	int presentationNodeHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeChildEntryToJson(this);
}