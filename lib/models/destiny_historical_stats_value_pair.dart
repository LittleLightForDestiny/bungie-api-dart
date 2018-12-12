class DestinyHistoricalStatsValuePair{
	int value;
	String displayValue;
	DestinyHistoricalStatsValuePair(
		int this.value,
		String this.displayValue,
	);

	static DestinyHistoricalStatsValuePair fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsValuePair(
				data['value'],
				data['displayValue'],
		);
	}

	static List<DestinyHistoricalStatsValuePair> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalStatsValuePair> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsValuePair.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['value'] = this.value;
			data['displayValue'] = this.displayValue;
		return data;
	}
}