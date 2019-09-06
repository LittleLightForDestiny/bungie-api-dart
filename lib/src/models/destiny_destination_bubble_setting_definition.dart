import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_destination_bubble_setting_definition.g.dart';

/// Human readable data about the bubble. Combine with DestinyBubbleDefinition - see DestinyDestinationDefinition.bubbleSettings for more information.
/// DEPRECATED - Just use bubbles.
@JsonSerializable()
class DestinyDestinationBubbleSettingDefinition {

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;
	DestinyDestinationBubbleSettingDefinition();

	factory DestinyDestinationBubbleSettingDefinition.fromJson(Map<String, dynamic> json) => _$DestinyDestinationBubbleSettingDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyDestinationBubbleSettingDefinitionToJson(this);
}
