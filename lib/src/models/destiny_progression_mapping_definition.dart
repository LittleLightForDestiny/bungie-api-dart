import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_progression_mapping_definition.g.dart';

/// Aggregations of multiple progressions.
/// These are used to apply rewards to multiple progressions at once. They can sometimes have human readable data as well, but only extremely sporadically.
@JsonSerializable()
class DestinyProgressionMappingDefinition {

	/// Infrequently defined in practice. Defer to the individual progressions&#39; display properties.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// The localized unit of measurement for progression across the progressions defined in this mapping. Unfortunately, this is very infrequently defined. Defer to the individual progressions&#39; display units.
	@JsonKey(name:'displayUnits')
	String displayUnits;

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
	DestinyProgressionMappingDefinition();

	factory DestinyProgressionMappingDefinition.fromJson(Map<String, dynamic> json) => _$DestinyProgressionMappingDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyProgressionMappingDefinitionToJson(this);
}
