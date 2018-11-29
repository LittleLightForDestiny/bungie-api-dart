class TrendingEntryDestinyItem{
	int itemHash;
	TrendingEntryDestinyItem(
		int this.itemHash,
	);

	static TrendingEntryDestinyItem fromJson(Map<String, dynamic> data){
		return new TrendingEntryDestinyItem(
				data['itemHash'],
		);
	}

	static List<TrendingEntryDestinyItem> fromList(List<dynamic> data){
		List<TrendingEntryDestinyItem> list = new List();
    data.forEach((item) {
      list.add(TrendingEntryDestinyItem.fromJson(item));
    });
    return list;
	}
}