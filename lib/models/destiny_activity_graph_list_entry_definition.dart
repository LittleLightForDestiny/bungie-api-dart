
/* Destinations and Activities may have default Activity Graphs that should be shown when you bring up the Director and are playing in either.
This contract defines the graph referred to and the gating for when it is relevant. */
class DestinyActivityGraphListEntryDefinition{
	
	/* The hash identifier of the DestinyActivityGraphDefinition that should be shown when opening the director. */
	int activityGraphHash;
	DestinyActivityGraphListEntryDefinition(
		this.activityGraphHash,
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
			data['activityGraphHash'] = this.activityGraphHash;
		return data;
	}
}