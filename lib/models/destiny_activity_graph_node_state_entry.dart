class DestinyActivityGraphNodeStateEntry{
	int state;
	DestinyActivityGraphNodeStateEntry(
		int this.state,
	);

	static DestinyActivityGraphNodeStateEntry fromJson(Map<String, dynamic> data){
		return new DestinyActivityGraphNodeStateEntry(
				data['state'],
		);
	}

	static List<DestinyActivityGraphNodeStateEntry> fromList(List<dynamic> data){
		List<DestinyActivityGraphNodeStateEntry> list = new List();
    data.forEach((item) {
      list.add(DestinyActivityGraphNodeStateEntry.fromJson(item));
    });
    return list;
	}
}