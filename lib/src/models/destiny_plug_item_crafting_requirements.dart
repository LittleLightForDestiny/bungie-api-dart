import 'package:json_annotation/json_annotation.dart';

import 'destiny_plug_item_crafting_unlock_requirement.dart';

part 'destiny_plug_item_crafting_requirements.g.dart';

@JsonSerializable()
class DestinyPlugItemCraftingRequirements{	
	DestinyPlugItemCraftingRequirements();

	factory DestinyPlugItemCraftingRequirements.fromJson(Map<String, dynamic> json) {
		return _$DestinyPlugItemCraftingRequirementsFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyPlugItemCraftingRequirementsToJson(this);
	
	@JsonKey(name:'unlockRequirements')
	List<DestinyPlugItemCraftingUnlockRequirement>? unlockRequirements;
	
	/// If the plug has a known level requirement, it'll be available here.
	@JsonKey(name:'requiredLevel')
	int? requiredLevel;
	
	@JsonKey(name:'materialRequirementHashes')
	List<int>? materialRequirementHashes;
}