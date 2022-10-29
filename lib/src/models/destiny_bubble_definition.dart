import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';

part 'destiny_bubble_definition.g.dart';

/// Basic identifying data about the bubble. Combine with DestinyDestinationBubbleSettingDefinition - see DestinyDestinationDefinition.bubbleSettings for more information.
@JsonSerializable()
class DestinyBubbleDefinition{	
	DestinyBubbleDefinition();

	
	/// The identifier for the bubble: only guaranteed to be unique within the Destination.
	@JsonKey(name:'hash')
	int? hash;
	
	/// The display properties of this bubble, so you don't have to look them up in a separate list anymore.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;

	factory DestinyBubbleDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyBubbleDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyBubbleDefinitionToJson(this);

	static Future<DestinyBubbleDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyBubbleDefinition>((json)=>DestinyBubbleDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}