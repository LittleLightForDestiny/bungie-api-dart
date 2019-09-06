import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_activity_type_definition.g.dart';

/// The definition for an Activity Type.
/// In Destiny 2, an Activity Type represents a conceptual categorization of Activities.
/// These are most commonly used in the game for the subtitle under Activities, but BNet uses them extensively to identify and group activities by their common properties.
/// Unfortunately, there has been a movement away from providing the richer data in Destiny 2 that we used to get in Destiny 1 for Activity Types. For instance, Nightfalls are grouped under the same Activity Type as regular Strikes. 
/// For this reason, BNet will eventually migrate toward Activity Modes as a better indicator of activity category. But for the time being, it is still referred to in many places across our codebase.
@JsonSerializable()
class DestinyActivityTypeDefinition {

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;

	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;

	/// If this is true, then there is an entity with this identifier&#x2F;type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;
	DestinyActivityTypeDefinition();

	factory DestinyActivityTypeDefinition.fromJson(Map<String, dynamic> json) => _$DestinyActivityTypeDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyActivityTypeDefinitionToJson(this);
}
