
import 'package:json_annotation/json_annotation.dart';
part 'destiny_presentation_node_collectible_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeCollectibleChildEntry {

	@JsonKey(name:'collectibleHash')
	int collectibleHash;
	DestinyPresentationNodeCollectibleChildEntry();

	factory DestinyPresentationNodeCollectibleChildEntry.fromJson(Map<String, dynamic> json) => _$DestinyPresentationNodeCollectibleChildEntryFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeCollectibleChildEntryToJson(this);
}
