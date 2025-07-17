import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_item_set_perk_definition.g.dart';

@JsonSerializable()
class DestinyItemSetPerkDefinition{	
	DestinyItemSetPerkDefinition();

	
	/// The number of set pieces required to activate the perk.
	@JsonKey(name:'requiredSetCount')
	int? requiredSetCount;
	
	/// The perk this set confers.
	@JsonKey(name:'sandboxPerkHash')
	int? sandboxPerkHash;

	factory DestinyItemSetPerkDefinition.fromJson(Map<String, dynamic> json) {
		return _$DestinyItemSetPerkDefinitionFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyItemSetPerkDefinitionToJson(this);

	static Future<DestinyItemSetPerkDefinition> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyItemSetPerkDefinition>((json)=>DestinyItemSetPerkDefinition.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}