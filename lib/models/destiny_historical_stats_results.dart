class DestinyHistoricalStatsResults{
	DestinyHistoricalStatsResults(
	);

	static DestinyHistoricalStatsResults fromJson(Map<String, dynamic> data){
		return new DestinyHistoricalStatsResults(
		);
	}

	static List<DestinyHistoricalStatsResults> fromList(List<dynamic> data){
		List<DestinyHistoricalStatsResults> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsResults.fromJson(item));
    });
    return list;
	}
}