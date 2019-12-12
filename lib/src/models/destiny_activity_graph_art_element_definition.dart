import 'package:json_annotation/json_annotation.dart';

import 'destiny_position_definition.dart';

part 'destiny_activity_graph_art_element_definition.g.dart';

/// These Art Elements are meant to represent one-off visual effects overlaid on the map. Currently, we do not have a pipeline to import the assets for these overlays, so this info exists as a placeholder for when such a pipeline exists (if it ever will)
@JsonSerializable()
class DestinyActivityGraphArtElementDefinition{
	
	DestinyActivityGraphArtElementDefinition();

	factory DestinyActivityGraphArtElementDefinition.fromJson(Map<String, dynamic> json) => _$DestinyActivityGraphArtElementDefinitionFromJson(json);

	/// The position on the map of the art element.
	@JsonKey(name:'position')
	DestinyPositionDefinition position;

	
	
	Map<String, dynamic> toJson() => _$DestinyActivityGraphArtElementDefinitionToJson(this);
}