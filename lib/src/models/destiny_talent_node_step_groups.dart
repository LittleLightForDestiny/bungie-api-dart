
import 'package:json_annotation/json_annotation.dart';
part 'destiny_talent_node_step_groups.g.dart';

/// These properties are an attempt to categorize talent node steps by certain common properties. See the related enumerations for the type of properties being categorized.
@JsonSerializable()
class DestinyTalentNodeStepGroups {

	@JsonKey(name:'weaponPerformance')
	int weaponPerformance;

	@JsonKey(name:'impactEffects')
	int impactEffects;

	@JsonKey(name:'guardianAttributes')
	int guardianAttributes;

	@JsonKey(name:'lightAbilities')
	int lightAbilities;

	@JsonKey(name:'damageTypes')
	int damageTypes;
	DestinyTalentNodeStepGroups();

	factory DestinyTalentNodeStepGroups.fromJson(Map<String, dynamic> json) => _$DestinyTalentNodeStepGroupsFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyTalentNodeStepGroupsToJson(this);
}
