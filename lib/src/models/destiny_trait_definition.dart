import 'package:json_annotation/json_annotation.dart';

import 'destiny_display_properties_definition.dart';

part 'destiny_trait_definition.g.dart';

@JsonSerializable()
class DestinyTraitDefinition{
	
	DestinyTraitDefinition();

	factory DestinyTraitDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyTraitDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;
	@JsonKey(name:'traitCategoryId')
	String traitCategoryId;
	@JsonKey(name:'traitCategoryHash')
	int traitCategoryHash;
	/// The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.
	/// When entities refer to each other in Destiny content, it is this hash that they are referring to.
	@JsonKey(name:'hash')
	int hash;
	/// The index of the entity as it was found in the investment tables.
	@JsonKey(name:'index')
	int index;
	/// If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry!
	@JsonKey(name:'redacted')
	bool redacted;

	
	
	Map<String, dynamic> toJson() => _$DestinyTraitDefinitionToJson(this);
}