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
		this.statId,
		this.group,
		this.periodTypes,
		this.modes,
		this.category,
		this.statName,
		this.statNameAbbr,
		this.statDescription,
		this.unitType,
		this.iconImage,
		this.mergeMethod,
		this.unitLabel,
		this.weight,
		this.medalTierHash,
	);

	static DestinyHistoricalStatsDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyHistoricalStatsDefinition(
				data['statId'],
				data['group'],
				data['periodTypes'] != null ? data['periodTypes']?.cast<int>() ?? null : null,
				data['modes'] != null ? data['modes']?.cast<int>() ?? null : null,
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
		if(data == null) {
			return null;
		};
		List<DestinyHistoricalStatsDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyHistoricalStatsDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['statId'] = this.statId;
			data['group'] = this.group;
			data['periodTypes'] = this.periodTypes;
			data['modes'] = this.modes;
			data['category'] = this.category;
			data['statName'] = this.statName;
			data['statNameAbbr'] = this.statNameAbbr;
			data['statDescription'] = this.statDescription;
			data['unitType'] = this.unitType;
			data['iconImage'] = this.iconImage;
			data['mergeMethod'] = this.mergeMethod;
			data['unitLabel'] = this.unitLabel;
			data['weight'] = this.weight;
			data['medalTierHash'] = this.medalTierHash;
		return data;
	}
}