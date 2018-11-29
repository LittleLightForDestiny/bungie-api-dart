class DestinyActivityGraphNodeActivityDefinition{
	int nodeActivityId;
	int activityHash;
	DestinyActivityGraphNodeActivityDefinition(
		int this.nodeActivityId,
		int this.activityHash,
	);

	static DestinyActivityGraphNodeActivityDefinition fromJson(Map<String, dynamic> data){
		return new DestinyActivityGraphNodeActivityDefinition(
				data['nodeActivityId'],
				data['activityHash'],
		);
	}

	static List<DestinyActivityGraphNodeActivityDefinition> fromList(List<dynamic> data){
		List<DestinyActivityGraphNodeActivityDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphNodeActivityDefinition.fromJson(item));
    });
    return list;
	}
}