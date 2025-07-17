import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_activity_loadout_restriction_definition.g.dart';

@JsonSerializable()
class DestinyActivityLoadoutRestrictionDefinition{	
	DestinyActivityLoadoutRestrictionDefinition();

	
	@JsonKey(name:'restrictedItemFilterHash')
	int? restrictedItemFilterHash;
	
	@JsonKey(name:'restrictedEquipmentSlotHashes')
	List<int>? restrictedEquipmentSlotHashes;
	
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

	factory DestinyActivityLoadoutRestrictionDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityLoadoutRestrictionDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityLoadoutRestrictionDefinitionToJson(this);

	static Future<DestinyActivityLoadoutRestrictionDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityLoadoutRestrictionDefinition>((json)=>DestinyActivityLoadoutRestrictionDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}