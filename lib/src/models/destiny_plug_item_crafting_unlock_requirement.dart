import 'package:json_annotation/json_annotation.dart';


part 'destiny_plug_item_crafting_unlock_requirement.g.dart';

@JsonSerializable()
class DestinyPlugItemCraftingUnlockRequirement{	
	DestinyPlugItemCraftingUnlockRequirement();

	factory DestinyPlugItemCraftingUnlockRequirement.fromJson(Map<String, dynamic> json) {
		return _$DestinyPlugItemCraftingUnlockRequirementFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPlugItemCraftingUnlockRequirementToJson(this);
	
	@JsonKey(name:'failureDescription')
	String? failureDescription;
}