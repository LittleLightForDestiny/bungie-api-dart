
/*  */
class DestinyObjectiveDisplayProperties{
	
	/* The activity associated with this objective in the context of this item, if any. */
	int activityHash;
	
	/* If true, the game shows this objective on item preview screens. */
	bool displayOnItemPreviewScreen;
	DestinyObjectiveDisplayProperties(
		this.activityHash,
		this.displayOnItemPreviewScreen,
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
			data['activityHash'] = this.activityHash;
			data['displayOnItemPreviewScreen'] = this.displayOnItemPreviewScreen;
		return data;
	}
}