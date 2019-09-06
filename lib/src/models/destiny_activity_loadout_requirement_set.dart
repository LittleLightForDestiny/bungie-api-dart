import 'destiny_activity_loadout_requirement.dart';

import 'package:json_annotation/json_annotation.dart';
part 'destiny_activity_loadout_requirement_set.g.dart';

@JsonSerializable()
class DestinyActivityLoadoutRequirementSet {

	/// The set of requirements that will be applied on the activity if this requirement set is active.
	@JsonKey(name:'requirements')
	List<DestinyActivityLoadoutRequirement> requirements;
	DestinyActivityLoadoutRequirementSet();

	factory DestinyActivityLoadoutRequirementSet.fromJson(Map<String, dynamic> json) => _$DestinyActivityLoadoutRequirementSetFromJson(json);
	
	Map<String, dynamic> toJson() => _$DestinyActivityLoadoutRequirementSetToJson(this);
}
