import 'package:json_annotation/json_annotation.dart';


part 'destiny_presentation_node_child_entry_base.g.dart';

@JsonSerializable()
class DestinyPresentationNodeChildEntryBase{	
	DestinyPresentationNodeChildEntryBase();

	factory DestinyPresentationNodeChildEntryBase.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodeChildEntryBaseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeChildEntryBaseToJson(this);
	
	/// Use this value to sort the presentation node children in ascending order.
	@JsonKey(name:'nodeDisplayPriority')
	int? nodeDisplayPriority;
}