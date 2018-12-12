class DestinyInsertPlugsRequestEntry{
	int socketIndex;
	int socketArrayType;
	int plugItemHash;
	DestinyInsertPlugsRequestEntry(
		int this.socketIndex,
		int this.socketArrayType,
		int this.plugItemHash,
	);

	static DestinyInsertPlugsRequestEntry fromMap(Map<String, dynamic> data){
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
      list.add(DestinyInsertPlugsRequestEntry.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['socketIndex'] = this.socketIndex;
			data['socketArrayType'] = this.socketArrayType;
			data['plugItemHash'] = this.plugItemHash;
		return data;
	}
}