
/** Represents a single state that a graph node might end up in. Depending on what's going on in the game, graph nodes could be shown in different ways or even excluded from view entirely. */
class DestinyActivityGraphNodeStateEntry{
	
	/**  */
	int state;
	DestinyActivityGraphNodeStateEntry(
		this.state,
	);

	static DestinyActivityGraphNodeStateEntry fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyActivityGraphNodeStateEntry(
				data['state'],
		);
	}

	static List<DestinyActivityGraphNodeStateEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyActivityGraphNodeStateEntry> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphNodeStateEntry.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['state'] = this.state;
		return data;
	}
}