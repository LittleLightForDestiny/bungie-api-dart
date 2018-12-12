class DestinyItemSummaryBlockDefinition{
	int sortPriority;
	DestinyItemSummaryBlockDefinition(
		int this.sortPriority,
	);

	static DestinyItemSummaryBlockDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyItemSummaryBlockDefinition(
				data['sortPriority'],
		);
	}

	static List<DestinyItemSummaryBlockDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyItemSummaryBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSummaryBlockDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['sortPriority'] = sortPriority;
	}
}