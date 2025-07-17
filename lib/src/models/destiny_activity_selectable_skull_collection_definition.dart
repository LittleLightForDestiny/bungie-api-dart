import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import 'destiny_activity_selectable_skull_collection_selection_type.dart';
import 'destiny_activity_selectable_skull.dart';

part 'destiny_activity_selectable_skull_collection_definition.g.dart';

@JsonSerializable()
class DestinyActivitySelectableSkullCollectionDefinition{	
	DestinyActivitySelectableSkullCollectionDefinition();

	
	/// Many Destiny*Definition contracts - the "first order" entities of Destiny that have their own tables in the Manifest Database - also have displayable information. This is the base class for that display information.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	@JsonKey(name:'skullSubcategoryHashes')
	List<int>? skullSubcategoryHashes;
	
	@JsonKey(name:'selectionType')
	DestinyActivitySelectableSkullCollectionSelectionType? selectionType;
	
	@JsonKey(name:'selectableActivitySkulls')
	List<DestinyActivitySelectableSkull>? selectableActivitySkulls;
	
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

	factory DestinyActivitySelectableSkullCollectionDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivitySelectableSkullCollectionDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivitySelectableSkullCollectionDefinitionToJson(this);

	static Future<DestinyActivitySelectableSkullCollectionDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivitySelectableSkullCollectionDefinition>((json)=>DestinyActivitySelectableSkullCollectionDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}