class DestinyActivityGraphListEntryDefinition{
	int activityGraphHash;
	DestinyActivityGraphListEntryDefinition(
		int this.activityGraphHash,
	);

	static DestinyActivityGraphListEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphListEntryDefinition(
				data['activityGraphHash'],
		);
	}

	static List<DestinyActivityGraphListEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGraphListEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphListEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityGraphHash'] = activityGraphHash;
	}
}