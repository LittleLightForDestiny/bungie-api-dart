class DestinyObjectiveDisplayProperties{
	int activityHash;
	bool displayOnItemPreviewScreen;
	DestinyObjectiveDisplayProperties(
		int this.activityHash,
		bool this.displayOnItemPreviewScreen,
	);

	static DestinyObjectiveDisplayProperties fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyObjectiveDisplayProperties(
				data['activityHash'],
				data['displayOnItemPreviewScreen'],
		);
	}

	static List<DestinyObjectiveDisplayProperties> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyObjectiveDisplayProperties> list = new List();
    data.forEach((item) {
      list.add(DestinyObjectiveDisplayProperties.fromJson(item));
    });
    return list;
	}
}