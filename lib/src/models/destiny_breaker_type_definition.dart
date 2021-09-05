import 'package:json_annotation/json_annotation.dart';

import 'destiny_display_properties_definition.dart';
import '../enums/destiny_breaker_type.dart';

part 'destiny_breaker_type_definition.g.dart';

@JsonSerializable()
class DestinyBreakerTypeDefinition{
	
	DestinyBreakerTypeDefinition();

	factory DestinyBreakerTypeDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyBreakerTypeDefinitionFromJson(json);
	}

	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	/// We have an enumeration for Breaker types for quick reference. This is the current definition's breaker type enum value.
	@JsonKey(name:'enumValue',unknownEnumValue:DestinyBreakerType.ProtectedInvalidEnumValue)
	DestinyBreakerType? enumValue;
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int? hash;
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int? index;
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool? redacted;

	
	
	Map<String, dynamic> toJson() => _$DestinyBreakerTypeDefinitionToJson(this);
}