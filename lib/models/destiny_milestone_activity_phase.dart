class DestinyMilestoneActivityPhase{
	bool complete;
	int phaseHash;
	DestinyMilestoneActivityPhase(
		bool this.complete,
		int this.phaseHash,
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
			data['complete'] = complete;
			data['phaseHash'] = phaseHash;
	}
}