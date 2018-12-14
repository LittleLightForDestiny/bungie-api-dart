class DestinyMilestoneActivityPhase{
	bool complete;
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