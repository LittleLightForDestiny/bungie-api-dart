import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_curator_block_definition.g.dart';

@JsonSerializable()
class DestinyActivityCuratorBlockDefinition{	
	DestinyActivityCuratorBlockDefinition();

	
	/// Sort order
	@JsonKey(name:'quickplaySortPriority')
	int? quickplaySortPriority;
	
	/// Whether this activity should be sorted to the front of the Portal category
	@JsonKey(name:'quickplaySortToFront')
	bool? quickplaySortToFront;

	factory DestinyActivityCuratorBlockDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityCuratorBlockDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityCuratorBlockDefinitionToJson(this);

	static Future<DestinyActivityCuratorBlockDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityCuratorBlockDefinition>((json)=>DestinyActivityCuratorBlockDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}