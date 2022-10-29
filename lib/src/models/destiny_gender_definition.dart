import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_gender.dart';
import 'destiny_display_properties_definition.dart';

part 'destiny_gender_definition.g.dart';

/// Gender is a social construct, and as such we have definitions for Genders. Right now there happens to only be two, but we&#39;ll see what the future holds.
@JsonSerializable()
class DestinyGenderDefinition{	
	DestinyGenderDefinition();

	
	/// This is a quick reference enumeration for all of the currently defined Genders. We use the enumeration for quicker lookups in related data, like DestinyClassDefinition.genderedClassNames.
	@JsonKey(name:'genderType',fromJson:decodeDestinyGender,toJson:encodeDestinyGender)
	DestinyGender? genderType;
	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
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

	factory DestinyGenderDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyGenderDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyGenderDefinitionToJson(this);

	static Future<DestinyGenderDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyGenderDefinition>((json)=>DestinyGenderDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}