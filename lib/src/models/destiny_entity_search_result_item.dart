import 'package:json_annotation/json_annotation.dart';

import 'destiny_display_properties_definition.dart';

part 'destiny_entity_search_result_item.g.dart';

/// An individual Destiny Entity returned from the entity search.
@JsonSerializable()
class DestinyEntitySearchResultItem{
	
	DestinyEntitySearchResultItem();

	factory DestinyEntitySearchResultItem.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyEntitySearchResultItemFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The hash identifier of the entity. You will use this to look up the DestinyDefinition relevant for the entity found.
	@JsonKey(name:'hash')
	int hash;
	/// The type of entity, returned as a string matching the DestinyDefinition's contract class name. You'll have to have your own mapping from class names to actually looking up those definitions in the manifest databases.
	@JsonKey(name:'entityType')
	String entityType;
	/// Basic display properties on the entity, so you don't have to look up the definition to show basic results for the item.
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition displayProperties;
	/// The ranking value for sorting that we calculated using our relevance formula. This will hopefully get better with time and iteration.
	@JsonKey(name:'weight')
	double weight;

	
	
	Map<String, dynamic> toJson() => _$DestinyEntitySearchResultItemToJson(this);
}