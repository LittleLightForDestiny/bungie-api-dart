class DestinyActivityGraphNodeActivityDefinition{
	int nodeActivityId;
	int activityHash;
	DestinyActivityGraphNodeActivityDefinition(
		int this.nodeActivityId,
		int this.activityHash,
	);

	static DestinyActivityGraphNodeActivityDefinition fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphNodeActivityDefinition(
				data['nodeActivityId'],
				data['activityHash'],
		);
	}

	static List<DestinyActivityGraphNodeActivityDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGraphNodeActivityDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphNodeActivityDefinition.fromJson(item));
    });
    return list;
	}
}