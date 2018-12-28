
/** When a Graph needs to show active Objectives, this defines those objectives as well as an identifier. */
class DestinyActivityGraphDisplayObjectiveDefinition{
	
	/** $NOTE $amola 2017-01-19 This field is apparently something that CUI uses to manually wire up objectives to display info. I am unsure how it works. */
	int id;
	
	/** The objective being shown on the map. */
	int objectiveHash;
	DestinyActivityGraphDisplayObjectiveDefinition(
		this.id,
		this.objectiveHash,
	);

	static DestinyActivityGraphDisplayObjectiveDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphDisplayObjectiveDefinition(
				data['id'],
				data['objectiveHash'],
		);
	}

	static List<DestinyActivityGraphDisplayObjectiveDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGraphDisplayObjectiveDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphDisplayObjectiveDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['id'] = this.id;
			data['objectiveHash'] = this.objectiveHash;
		return data;
	}
}