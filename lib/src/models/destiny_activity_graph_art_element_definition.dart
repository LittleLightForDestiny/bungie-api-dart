import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_position_definition.dart';

part 'destiny_activity_graph_art_element_definition.g.dart';

/// These Art Elements are meant to represent one-off visual effects overlaid on the map. Currently, we do not have a pipeline to import the assets for these overlays, so this info exists as a placeholder for when such a pipeline exists (if it ever will)
@JsonSerializable()
class DestinyActivityGraphArtElementDefinition{	
	DestinyActivityGraphArtElementDefinition();

	
	/// The position on the map of the art element.
	@JsonKey(name:'position')
	DestinyPositionDefinition? position;

	factory DestinyActivityGraphArtElementDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityGraphArtElementDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityGraphArtElementDefinitionToJson(this);

	static Future<DestinyActivityGraphArtElementDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityGraphArtElementDefinition>((json)=>DestinyActivityGraphArtElementDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}