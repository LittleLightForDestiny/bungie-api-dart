import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_item_filter_definition.g.dart';

/// Lists of items that can be used for a variety of purposes, including featuring them as new gear
@JsonSerializable()
class DestinyItemFilterDefinition{	
	DestinyItemFilterDefinition();

	
	/// The items in this set
	@JsonKey(name:'setItems')
	List<int>? setItems;
	
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

	factory DestinyItemFilterDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemFilterDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemFilterDefinitionToJson(this);

	static Future<DestinyItemFilterDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemFilterDefinition>((json)=>DestinyItemFilterDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}