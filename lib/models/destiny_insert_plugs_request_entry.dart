class DestinyInsertPlugsRequestEntry{
	int socketIndex;
	int socketArrayType;
	int plugItemHash;
	DestinyInsertPlugsRequestEntry(
		int this.socketIndex,
		int this.socketArrayType,
		int this.plugItemHash,
	);

	static DestinyInsertPlugsRequestEntry fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyInsertPlugsRequestEntry(
				data['socketIndex'],
				data['socketArrayType'],
				data['plugItemHash'],
		);
	}

	static List<DestinyInsertPlugsRequestEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyInsertPlugsRequestEntry> list = new List();
    data.forEach((item) {
      list.add(DestinyInsertPlugsRequestEntry.fromJson(item));
    });
    return list;
	}
}