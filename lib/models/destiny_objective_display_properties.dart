class DestinyObjectiveDisplayProperties{
	int activityHash;
	bool displayOnItemPreviewScreen;
	DestinyObjectiveDisplayProperties(
		int this.activityHash,
		bool this.displayOnItemPreviewScreen,
	);

	static DestinyObjectiveDisplayProperties fromMap(Map<String, dynamic> data){
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
      list.add(DestinyObjectiveDisplayProperties.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['activityHash'] = activityHash;
			data['displayOnItemPreviewScreen'] = displayOnItemPreviewScreen;
	}
}