
/** Represents whatever information we can return about an explicit phase in an activity. In the future, I hope we'll have more than just "guh, you done gone and did something," but for the forseeable future that's all we've got. I'm making it more than just a list of booleans out of that overly-optimistic hope. */
class DestinyMilestoneActivityPhase{
	
	/** Indicates if the phase has been completed. */
	bool complete;
	
	/** In DestinyActivityDefinition, if the activity has phases, there will be a set of phases defined in the "insertionPoints" property. This is the hash that maps to that phase. */
	int phaseHash;
	DestinyMilestoneActivityPhase(
		this.complete,
		this.phaseHash,
	);

	static DestinyMilestoneActivityPhase fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneActivityPhase(
				data['complete'],
				data['phaseHash'],
		);
	}

	static List<DestinyMilestoneActivityPhase> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneActivityPhase> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivityPhase.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['complete'] = this.complete;
			data['phaseHash'] = this.phaseHash;
		return data;
	}
}