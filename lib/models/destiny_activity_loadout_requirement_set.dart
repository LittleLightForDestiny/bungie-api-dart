import 'destiny_activity_loadout_requirement.dart';
class DestinyActivityLoadoutRequirementSet{
	List<DestinyActivityLoadoutRequirement> requirements;
	DestinyActivityLoadoutRequirementSet(
		List<DestinyActivityLoadoutRequirement> this.requirements,
	);

	static DestinyActivityLoadoutRequirementSet fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityLoadoutRequirementSet(
				DestinyActivityLoadoutRequirement.fromList(data['requirements']),
		);
	}

	static List<DestinyActivityLoadoutRequirementSet> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityLoadoutRequirementSet> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityLoadoutRequirementSet.fromJson(item));
    });
    return list;
	}
}