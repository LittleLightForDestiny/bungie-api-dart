class DestinyLinkedGraphEntryDefinition{
	int activityGraphHash;
	DestinyLinkedGraphEntryDefinition(
		int this.activityGraphHash,
	);

	static DestinyLinkedGraphEntryDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyLinkedGraphEntryDefinition.fromJson(item));
    });
    return list;
	}
}