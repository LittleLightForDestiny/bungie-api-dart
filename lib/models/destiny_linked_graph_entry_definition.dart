class DestinyLinkedGraphEntryDefinition{
	int activityGraphHash;
	DestinyLinkedGraphEntryDefinition(
		this.activityGraphHash,
	);

	static DestinyLinkedGraphEntryDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyLinkedGraphEntryDefinition(
				data['activityGraphHash'],
		);
	}

	static List<DestinyLinkedGraphEntryDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyLinkedGraphEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyLinkedGraphEntryDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityGraphHash'] = this.activityGraphHash;
		return data;
	}
}