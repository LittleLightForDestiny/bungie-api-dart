import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_place_definition.g.dart';

/// Okay, so Activities (DestinyActivityDefinition) take place in Destinations (DestinyDestinationDefinition). Destinations are part of larger locations known as Places (you&#39;re reading its documentation right now).
/// Places are more on the planetary scale, like &quot;Earth&quot; and &quot;Your Mom.&quot;
@JsonSerializable()
class DestinyPlaceDefinition {

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
	DestinyPlaceDefinition();

	factory DestinyPlaceDefinition.fromJson(Map<String, dynamic> json) => _$DestinyPlaceDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyPlaceDefinitionToJson(this);
}
