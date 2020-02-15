import 'package:json_annotation/json_annotation.dart';


part 'destiny_presentation_node_collectible_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeCollectibleChildEntry{
	
	DestinyPresentationNodeCollectibleChildEntry();

	factory DestinyPresentationNodeCollectibleChildEntry.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyPresentationNodeCollectibleChildEntryFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'collectibleHash')
	int collectibleHash;

	
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeCollectibleChildEntryToJson(this);
}