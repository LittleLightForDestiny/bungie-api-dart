
/* Represents a stat on an item *or* Character (NOT a Historical Stat, but a physical attribute stat like Attack, Defense etc...) */
class DestinyStat{
	
	/* The hash identifier for the Stat. Use it to look up the DestinyStatDefinition for static data about the stat. */
	int statHash;
	
	/* The current value of the Stat. */
	int value;
	
	/* The highest possible value for the stat, if we were able to compute it. (I wouldn't necessarily trust this value right now. I would like to improve its calculation in later iterations of the API. Consider this a placeholder for desired future functionality) */
	int maximumValue;
	DestinyStat(
		this.statHash,
		this.value,
		this.maximumValue,
	);

	static DestinyStat fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyStat(
				data['statHash'],
				data['value'],
				data['maximumValue'],
		);
	}

	static List<DestinyStat> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyStat> list = new List();
    data.forEach((item) {
      list.add(DestinyStat.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['statHash'] = this.statHash;
			data['value'] = this.value;
			data['maximumValue'] = this.maximumValue;
		return data;
	}
}