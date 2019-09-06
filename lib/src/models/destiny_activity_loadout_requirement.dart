
import 'package:json_annotation/json_annotation.dart';
part 'destiny_activity_loadout_requirement.g.dart';

@JsonSerializable()
class DestinyActivityLoadoutRequirement {

	@JsonKey(name:'equipmentSlotHash')
	int equipmentSlotHash;

	@JsonKey(name:'allowedEquippedItemHashes')
	List<int> allowedEquippedItemHashes;

	@JsonKey(name:'allowedWeaponSubTypes')
	List<int> allowedWeaponSubTypes;
	DestinyActivityLoadoutRequirement();

	factory DestinyActivityLoadoutRequirement.fromJson(Map<String, dynamic> json) => _$DestinyActivityLoadoutRequirementFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyActivityLoadoutRequirementToJson(this);
}
