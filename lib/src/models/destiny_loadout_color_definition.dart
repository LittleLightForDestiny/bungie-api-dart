import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_loadout_color_definition.g.dart';

@JsonSerializable()
class DestinyLoadoutColorDefinition{	
	DestinyLoadoutColorDefinition();

	
	@JsonKey(name:'colorImagePath')
	String? colorImagePath;
	
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

	factory DestinyLoadoutColorDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyLoadoutColorDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyLoadoutColorDefinitionToJson(this);

	static Future<DestinyLoadoutColorDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyLoadoutColorDefinition>((json)=>DestinyLoadoutColorDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}