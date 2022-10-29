import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import '../enums/destiny_item_sub_type.dart';

part 'destiny_activity_loadout_requirement.g.dart';

@JsonSerializable()
class DestinyActivityLoadoutRequirement{	
	DestinyActivityLoadoutRequirement();

	
	@JsonKey(name:'equipmentSlotHash')
	int? equipmentSlotHash;
	
	@JsonKey(name:'allowedEquippedItemHashes')
	List<int>? allowedEquippedItemHashes;
	
	@JsonKey(name:'allowedWeaponSubTypes')
	List<DestinyItemSubType>? allowedWeaponSubTypes;

	factory DestinyActivityLoadoutRequirement.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityLoadoutRequirementFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityLoadoutRequirementToJson(this);

	static Future<DestinyActivityLoadoutRequirement> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityLoadoutRequirement>((json)=>DestinyActivityLoadoutRequirement.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}