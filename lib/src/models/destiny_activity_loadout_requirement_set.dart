import 'package:json_annotation/json_annotation.dart';
import 'package:compute/compute.dart';

import 'destiny_activity_loadout_requirement.dart';

part 'destiny_activity_loadout_requirement_set.g.dart';

@JsonSerializable()
class DestinyActivityLoadoutRequirementSet{	
	DestinyActivityLoadoutRequirementSet();

	
	/// The set of requirements that will be applied on the activity if this requirement set is active.
	@JsonKey(name:'requirements')
	List<DestinyActivityLoadoutRequirement>? requirements;

	factory DestinyActivityLoadoutRequirementSet.fromJson(Map<String, dynamic> json) {
		return _$DestinyActivityLoadoutRequirementSetFromJson(json);
	}
	
	Map<String, dynamic> toJson() => _$DestinyActivityLoadoutRequirementSetToJson(this);

	static Future<DestinyActivityLoadoutRequirementSet> asyncFromJson(Map<String, dynamic> json) => 
		compute<Map<String, dynamic>, DestinyActivityLoadoutRequirementSet>((json)=>DestinyActivityLoadoutRequirementSet.fromJson(json), json);

	Future<Map<String, dynamic>> asyncToJson() => 
		compute<void, Map<String, dynamic>>((_)=>toJson(), null);
}