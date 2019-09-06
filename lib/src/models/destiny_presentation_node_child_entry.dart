
import 'package:json_annotation/json_annotation.dart';
part 'destiny_presentation_node_child_entry.g.dart';

@JsonSerializable()
class DestinyPresentationNodeChildEntry {

	@JsonKey(name:'presentationNodeHash')
	int presentationNodeHash;
	DestinyPresentationNodeChildEntry();

	factory DestinyPresentationNodeChildEntry.fromJson(Map<String, dynamic> json) => _$DestinyPresentationNodeChildEntryFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeChildEntryToJson(this);
}
