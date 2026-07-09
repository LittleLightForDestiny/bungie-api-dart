import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_linked_graph_entry_definition.dart';

part 'destiny_linked_graph_definition.g.dart';

/// This describes links between the current graph and others, as well as when that link is relevant.
@JsonSerializable()
class DestinyLinkedGraphDefinition{	
	DestinyLinkedGraphDefinition();

	
	@JsonKey(name:'description')
	String? description;
	
	@JsonKey(name:'name')
	String? name;
	
	@JsonKey(name:'linkedGraphId')
	int? linkedGraphId;
	
	@JsonKey(name:'linkedGraphs')
	List<DestinyLinkedGraphEntryDefinition>? linkedGraphs;
	
	@JsonKey(name:'overview')
	String? overview;

	factory DestinyLinkedGraphDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyLinkedGraphDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyLinkedGraphDefinitionToJson(this);

	static Future<DestinyLinkedGraphDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyLinkedGraphDefinition>((json)=>DestinyLinkedGraphDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}