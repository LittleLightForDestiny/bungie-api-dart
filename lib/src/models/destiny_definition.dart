import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_definition.g.dart';

/// Provides common properties for destiny definitions.
@JsonSerializable()
class DestinyDefinition{	
	DestinyDefinition();

	
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

	factory DestinyDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyDefinitionToJson(this);

	static Future<DestinyDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyDefinition>((json)=>DestinyDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}