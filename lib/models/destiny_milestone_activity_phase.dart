class DestinyMilestoneActivityPhase{
	bool complete;
	int phaseHash;
	DestinyMilestoneActivityPhase(
		bool this.complete,
		int this.phaseHash,
	);

	static DestinyMilestoneActivityPhase fromJson(Map<String, dynamic> data){
		return new DestinyMilestoneActivityPhase(
				data['complete'],
				data['phaseHash'],
		);
	}

	static List<DestinyMilestoneActivityPhase> fromList(List<dynamic> data){
		List<DestinyMilestoneActivityPhase> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneActivityPhase.fromJson(item));
    });
    return list;
	}
}