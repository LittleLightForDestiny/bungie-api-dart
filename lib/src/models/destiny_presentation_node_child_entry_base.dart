import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_presentation_node_child_entry_base.g.dart';

@JsonSerializable()
class DestinyPresentationNodeChildEntryBase{	
	DestinyPresentationNodeChildEntryBase();

	
	/// Use this value to sort the presentation node children in ascending order.
	@JsonKey(name:'nodeDisplayPriority')
	int? nodeDisplayPriority;

	factory DestinyPresentationNodeChildEntryBase.fromJson(Map<String, dynamic> json) {
		return _$DestinyPresentationNodeChildEntryBaseFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPresentationNodeChildEntryBaseToJson(this);

	static Future<DestinyPresentationNodeChildEntryBase> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPresentationNodeChildEntryBase>((json)=>DestinyPresentationNodeChildEntryBase.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}