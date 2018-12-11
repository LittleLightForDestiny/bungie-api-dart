class TrendingEntryDestinyItem{
	int itemHash;
	TrendingEntryDestinyItem(
		int this.itemHash,
	);

	static TrendingEntryDestinyItem fromJson(Map<String, dynamic> data){
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
      list.add(TrendingEntryDestinyItem.fromJson(item));
    });
    return list;
	}
}