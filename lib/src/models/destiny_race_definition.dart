import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_race_definition.g.dart';

/// In Destiny, &quot;Races&quot; are really more like &quot;Species&quot;. Sort of. I mean, are the Awoken a separate species from humans? I&#39;m not sure. But either way, they&#39;re defined here. You&#39;ll see Exo, Awoken, and Human as examples of these Species. Players will choose one for their character.
@JsonSerializable()
class DestinyRaceDefinition {

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// An enumeration defining the existing, known Races&#x2F;Species for player characters. This value will be the enum value matching this definition.
	@JsonKey(name:'raceType')
	int raceType;

	/// A localized string referring to the singular form of the Race&#39;s name when referred to in gendered form. Keyed by the DestinyGender.
	@JsonKey(name:'genderedRaceNames')
	Map<String, String> genderedRaceNames;

	@JsonKey(name:'genderedRaceNamesByGenderHash')
	Map<String, String> genderedRaceNamesByGenderHash;

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
	DestinyRaceDefinition();

	factory DestinyRaceDefinition.fromJson(Map<String, dynamic> json) => _$DestinyRaceDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyRaceDefinitionToJson(this);
}
