import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';


part 'destiny_plug_item_crafting_unlock_requirement.g.dart';

@JsonSerializable()
class DestinyPlugItemCraftingUnlockRequirement{	
	DestinyPlugItemCraftingUnlockRequirement();

	
	@JsonKey(name:'failureDescription')
	String? failureDescription;

	factory DestinyPlugItemCraftingUnlockRequirement.fromJson(Map<String, dynamic> json) {
		return _$DestinyPlugItemCraftingUnlockRequirementFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPlugItemCraftingUnlockRequirementToJson(this);

	static Future<DestinyPlugItemCraftingUnlockRequirement> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyPlugItemCraftingUnlockRequirement>((json)=>DestinyPlugItemCraftingUnlockRequirement.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}