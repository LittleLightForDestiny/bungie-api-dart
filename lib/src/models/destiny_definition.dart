
import 'package:json_annotation/json_annotation.dart';
part 'destiny_definition.g.dart';

/// Provides common properties for destiny definitions.
@JsonSerializable()
class DestinyDefinition {

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
	DestinyDefinition();

	factory DestinyDefinition.fromJson(Map<String, dynamic> json) => _$DestinyDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyDefinitionToJson(this);
}
