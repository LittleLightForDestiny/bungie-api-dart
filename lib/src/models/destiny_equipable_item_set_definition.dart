import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_display_properties_definition.dart';
import 'destiny_item_set_perk_definition.dart';

part 'destiny_equipable_item_set_definition.g.dart';

/// Perks that are active only when you have a certain number of set items equipped.
@JsonSerializable()
class DestinyEquipableItemSetDefinition{	
	DestinyEquipableItemSetDefinition();

	
	/// Display Properties, including name and icon, for this item set
	@JsonKey(name:'displayProperties')
	DestinyDisplayPropertiesDefinition? displayProperties;
	
	/// The items that confer these perks.
	@JsonKey(name:'setItems')
	List<int>? setItems;
	
	/// The perks conferred by this set of armor pieces.
	@JsonKey(name:'setPerks')
	List<DestinyItemSetPerkDefinition>? setPerks;
	
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

	factory DestinyEquipableItemSetDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyEquipableItemSetDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyEquipableItemSetDefinitionToJson(this);

	static Future<DestinyEquipableItemSetDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyEquipableItemSetDefinition>((json)=>DestinyEquipableItemSetDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}