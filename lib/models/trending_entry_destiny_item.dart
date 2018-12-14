class TrendingEntryDestinyItem{
	int itemHash;
	TrendingEntryDestinyItem(
		this.itemHash,
	);

	static TrendingEntryDestinyItem fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new TrendingEntryDestinyItem(
				data['itemHash'],
		);
	}

	static List<TrendingEntryDestinyItem> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<TrendingEntryDestinyItem> list = new List();
    data.forEach((item) {
      list.add(TrendingEntryDestinyItem.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemHash'] = this.itemHash;
		return data;
	}
}