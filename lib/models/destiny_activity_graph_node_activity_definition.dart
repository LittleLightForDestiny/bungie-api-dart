class DestinyActivityGraphNodeActivityDefinition{
	int nodeActivityId;
	int activityHash;
	DestinyActivityGraphNodeActivityDefinition(
		int this.nodeActivityId,
		int this.activityHash,
	);

	static DestinyActivityGraphNodeActivityDefinition fromMap(Map<String, dynamic> data){
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
      list.add(DestinyActivityGraphNodeActivityDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['nodeActivityId'] = this.nodeActivityId;
			data['activityHash'] = this.activityHash;
		return data;
	}
}