import 'package:json_annotation/json_annotation.dart';

import '../enums/destiny_talent_node_step_weapon_performances.dart';
import '../enums/destiny_talent_node_step_impact_effects.dart';
import '../enums/destiny_talent_node_step_guardian_attributes.dart';
import '../enums/destiny_talent_node_step_light_abilities.dart';
import '../enums/destiny_talent_node_step_damage_types.dart';

part 'destiny_talent_node_step_groups.g.dart';

/// These properties are an attempt to categorize talent node steps by certain common properties. See the related enumerations for the type of properties being categorized.
@JsonSerializable()
class DestinyTalentNodeStepGroups{
	
	DestinyTalentNodeStepGroups();

	factory DestinyTalentNodeStepGroups.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyTalentNodeStepGroupsFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	@JsonKey(name:'weaponPerformance')
	DestinyTalentNodeStepWeaponPerformances weaponPerformance;
	@JsonKey(name:'impactEffects')
	DestinyTalentNodeStepImpactEffects impactEffects;
	@JsonKey(name:'guardianAttributes')
	DestinyTalentNodeStepGuardianAttributes guardianAttributes;
	@JsonKey(name:'lightAbilities')
	DestinyTalentNodeStepLightAbilities lightAbilities;
	@JsonKey(name:'damageTypes')
	DestinyTalentNodeStepDamageTypes damageTypes;

	
	
	Map<String, dynamic> toJson() => _$DestinyTalentNodeStepGroupsToJson(this);
}