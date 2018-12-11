class DestinyItemSummaryBlockDefinition{
	int sortPriority;
	DestinyItemSummaryBlockDefinition(
		int this.sortPriority,
	);

	static DestinyItemSummaryBlockDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyItemSummaryBlockDefinition.fromJson(item));
    });
    return list;
	}
}