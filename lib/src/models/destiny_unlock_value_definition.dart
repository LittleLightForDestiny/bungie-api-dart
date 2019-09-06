
import 'package:json_annotation/json_annotation.dart';
part 'destiny_unlock_value_definition.g.dart';

/// An Unlock Value is an internal integer value, stored on the server and used in a variety of ways, most frequently for the gating&#x2F;requirement checks that the game performs across all of its main features. They can also be used as the storage data for mapped Progressions, Objectives, and other features that require storage of variable numeric values.
@JsonSerializable()
class DestinyUnlockValueDefinition {

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
	DestinyUnlockValueDefinition();

	factory DestinyUnlockValueDefinition.fromJson(Map<String, dynamic> json) => _$DestinyUnlockValueDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyUnlockValueDefinitionToJson(this);
}
