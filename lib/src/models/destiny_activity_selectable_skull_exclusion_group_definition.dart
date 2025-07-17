import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_selectable_skull_exclusion_group_definition.g.dart';

@JsonSerializable()
class DestinyActivitySelectableSkullExclusionGroupDefinition{	
	DestinyActivitySelectableSkullExclusionGroupDefinition();

	
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

	factory DestinyActivitySelectableSkullExclusionGroupDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivitySelectableSkullExclusionGroupDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivitySelectableSkullExclusionGroupDefinitionToJson(this);

	static Future<DestinyActivitySelectableSkullExclusionGroupDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivitySelectableSkullExclusionGroupDefinition>((json)=>DestinyActivitySelectableSkullExclusionGroupDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}