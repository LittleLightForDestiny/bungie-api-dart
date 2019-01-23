import 'destiny_activity_loadout_requirement.dart';

/**  */
class DestinyActivityLoadoutRequirementSet{
	
	/** The set of requirements that will be applied on the activity if this requirement set is active. */
	List<DestinyActivityLoadoutRequirement> requirements;
	DestinyActivityLoadoutRequirementSet(
		this.requirements,
	);

	static DestinyActivityLoadoutRequirementSet fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityLoadoutRequirementSet(
				data['requirements'] != null ? DestinyActivityLoadoutRequirement.fromList(data['requirements']) : null,
		);
	}

	static List<DestinyActivityLoadoutRequirementSet> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityLoadoutRequirementSet> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityLoadoutRequirementSet.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['requirements'] = this.requirements != null? this.requirements.map((item)=>item.toMap()).toList() : null;
		return data;
	}
}