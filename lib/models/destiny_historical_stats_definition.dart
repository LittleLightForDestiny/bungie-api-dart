class DestinyHistoricalStatsDefinition{
	String statId;
	int group;
	List<int> periodTypes;
	List<int> modes;
	int category;
	String statName;
	String statNameAbbr;
	String statDescription;
	int unitType;
	String iconImage;
	int mergeMethod;
	String unitLabel;
	int weight;
	int medalTierHash;
	DestinyHistoricalStatsDefinition(
		String this.statId,
		int this.group,
		List<int> this.periodTypes,
		List<int> this.modes,
		int this.category,
		String this.statName,
		String this.statNameAbbr,
		String this.statDescription,
		int this.unitType,
		String this.iconImage,
		int this.mergeMethod,
		String this.unitLabel,
		int this.weight,
		int this.medalTierHash,
	);

	static DestinyHistoricalStatsDefinition fromJson(Map<String, dynamic> data){
		return new DestinyHistoricalStatsDefinition(
				data['statId'],
				data['group'],
				data['periodTypes'],
				data['modes'],
				data['category'],
				data['statName'],
				data['statNameAbbr'],
				data['statDescription'],
				data['unitType'],
				data['iconImage'],
				data['mergeMethod'],
				data['unitLabel'],
				data['weight'],
				data['medalTierHash'],
		);
	}

	static List<DestinyHistoricalStatsDefinition> fromList(List<dynamic> data){
		List<DestinyHistoricalStatsDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsDefinition.fromJson(item));
    });
    return list;
	}
}