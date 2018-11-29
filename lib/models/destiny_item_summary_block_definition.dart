class DestinyItemSummaryBlockDefinition{
	int sortPriority;
	DestinyItemSummaryBlockDefinition(
		int this.sortPriority,
	);

	static DestinyItemSummaryBlockDefinition fromJson(Map<String, dynamic> data){
		return new DestinyItemSummaryBlockDefinition(
				data['sortPriority'],
		);
	}

	static List<DestinyItemSummaryBlockDefinition> fromList(List<dynamic> data){
		List<DestinyItemSummaryBlockDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyItemSummaryBlockDefinition.fromJson(item));
    });
    return list;
	}
}