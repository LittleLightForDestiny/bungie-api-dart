class DestinyActivityGraphListEntryDefinition{
	int activityGraphHash;
	DestinyActivityGraphListEntryDefinition(
		int this.activityGraphHash,
	);

	static DestinyActivityGraphListEntryDefinition fromJson(Map<String, dynamic> data){
		return new DestinyActivityGraphListEntryDefinition(
				data['activityGraphHash'],
		);
	}

	static List<DestinyActivityGraphListEntryDefinition> fromList(List<dynamic> data){
		List<DestinyActivityGraphListEntryDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphListEntryDefinition.fromJson(item));
    });
    return list;
	}
}