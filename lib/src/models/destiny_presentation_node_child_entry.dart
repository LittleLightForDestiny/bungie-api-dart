import 'package:json_annotation/json_annotation.dart';


part 'destiny_presentation_node_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeChildEntry{	
	DestinyPresentationNodeChildEntry();

	factory DestinyPresentationNodeChildEntry.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodeChildEntryFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeChildEntryToJson(this);
	
	@JsonKey(name:'presentationNodeHash')
	int? presentationNodeHash;
	
	/// Use this value to sort the presentation node children in ascending order.
	@JsonKey(name:'nodeDisplayPriority')
	int? nodeDisplayPriority;
}