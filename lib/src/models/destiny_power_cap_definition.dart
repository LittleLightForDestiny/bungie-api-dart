import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_power_cap_definition.g.dart';

/// Defines a &#39;power cap&#39; (limit) for gear items, based on the rarity tier and season of release.
@JsonSerializable()
class DestinyPowerCapDefinition{	
	DestinyPowerCapDefinition();

	
	/// The raw value for a power cap.
	@JsonKey(name:'powerCap')
	int? powerCap;
	
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

	factory DestinyPowerCapDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyPowerCapDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPowerCapDefinitionToJson(this);

	static Future<DestinyPowerCapDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPowerCapDefinition>((json)=>DestinyPowerCapDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}