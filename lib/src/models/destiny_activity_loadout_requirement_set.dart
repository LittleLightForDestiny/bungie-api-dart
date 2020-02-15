import 'package:json_annotation/json_annotation.dart';

import 'destiny_activity_loadout_requirement.dart';

part 'destiny_activity_loadout_requirement_set.g.dart';

@JsonSerializable()
class DestinyActivityLoadoutRequirementSet{
	
	DestinyActivityLoadoutRequirementSet();

	factory DestinyActivityLoadoutRequirementSet.fromJson(Map<String, dynamic> json) {
		try{
			return _$DestinyActivityLoadoutRequirementSetFromJson(json);
		}catch(e){
			print(e);
		}
		return null;
	}

	/// The set of requirements that will be applied on the activity if this requirement set is active.
	@JsonKey(name:'requirements')
	List<DestinyActivityLoadoutRequirement> requirements;

	
	
	Map<String, dynamic> toJson() => _$DestinyActivityLoadoutRequirementSetToJson(this);
}