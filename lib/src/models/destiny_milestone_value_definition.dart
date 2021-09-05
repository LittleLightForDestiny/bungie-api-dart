import 'package:json_annotation/json_annotation.dart';

import 'destiny_display_properties_definition.dart';

part 'destiny_milestone_value_definition.g.dart';

/// The definition for information related to a key&#x2F;value pair that is relevant for a particular Milestone or component within the Milestone. 
/// This lets us more flexibly pass up information that&#39;s useful to someone, even if it&#39;s not necessarily us.
@JsonSerializable()
class DestinyMilestoneValueDefinition{
	
	DestinyMilestoneValueDefinition();

	factory DestinyMilestoneValueDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyMilestoneValueDefinitionFromJson(json);
	}

	@JsonKey(name:'key')
	String? key;
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;

	
	
	Map<String, dynamic> toJson() => _$DestinyMilestoneValueDefinitionToJson(this);
}