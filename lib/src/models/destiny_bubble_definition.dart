import 'package:json_annotation/json_annotation.dart';

import 'destiny_display_properties_definition.dart';

part 'destiny_bubble_definition.g.dart';

/// Basic identifying data about the bubble. Combine with DestinyDestinationBubbleSettingDefinition - see DestinyDestinationDefinition.bubbleSettings for more information.
@JsonSerializable()
class DestinyBubbleDefinition{
	
	DestinyBubbleDefinition();

	factory DestinyBubbleDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyBubbleDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The identifier for the bubble: only guaranteed to be unique within the Destination.
	@JsonKey(name:'hash')
	int hash;
	/// The display properties of this bubble, so you don't have to look them up in a separate list anymore.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	
	
	Map<String, dynamic> toJson() => _$DestinyBubbleDefinitionToJson(this);
}