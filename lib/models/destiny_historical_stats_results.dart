class DestinyHistoricalStatsResults{
	DestinyHistoricalStatsResults(
	);

	static DestinyHistoricalStatsResults fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsResults(
		);
	}

	static List<DestinyHistoricalStatsResults> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalStatsResults> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsResults.fromJson(item));
    });
    return list;
	}
}