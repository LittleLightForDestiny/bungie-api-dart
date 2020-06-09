import 'package:json_annotation/json_annotation.dart';


part 'destiny_trait_category_definition.g.dart';

@JsonSerializable()
class DestinyTraitCategoryDefinition{
	
	DestinyTraitCategoryDefinition();

	factory DestinyTraitCategoryDefinition.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyTraitCategoryDefinitionFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'traitCategoryId')
	String traitCategoryId;
	@JsonKey(name:'traitHashes')
	List<int> traitHashes;
	@JsonKey(name:'traitIds')
	List<String> traitIds;
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

	
	
	Map<String, dynamic> toJson() => _$DestinyTraitCategoryDefinitionToJson(this);
}