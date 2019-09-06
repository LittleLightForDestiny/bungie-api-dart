import 'destiny_display_properties_definition.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_class_definition.g.dart';

/// Defines a Character Class in Destiny 2. These are types of characters you can play, like Titan, Warlock, and Hunter.
@JsonSerializable()
class DestinyClassDefinition {

	/// In Destiny 1, we added a convenience Enumeration for referring to classes. We&#39;ve kept it, though mostly for posterity. This is the enum value for this definition&#39;s class.
	@JsonKey(name:'classType')
	int classType;

	/// Many Destiny*Definition contracts - the &quot;first order&quot; entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;

	/// A localized string referring to the singular form of the Class&#39;s name when referred to in gendered form. Keyed by the DestinyGender.
	@JsonKey(name:'genderedClassNames')
	Map<String, String> genderedClassNames;

	@JsonKey(name:'genderedClassNamesByGenderHash')
	Map<String, String> genderedClassNamesByGenderHash;

	/// Mentors don&#39;t really mean anything anymore. Don&#39;t expect this to be populated.
	@JsonKey(name:'mentorVendorHash')
	int mentorVendorHash;

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
	DestinyClassDefinition();

	factory DestinyClassDefinition.fromJson(Map<String, dynamic> json) => _$DestinyClassDefinitionFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyClassDefinitionToJson(this);
}
