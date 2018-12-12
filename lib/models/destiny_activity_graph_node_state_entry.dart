class DestinyActivityGraphNodeStateEntry{
	int state;
	DestinyActivityGraphNodeStateEntry(
		int this.state,
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
			data['state'] = state;
	}
}