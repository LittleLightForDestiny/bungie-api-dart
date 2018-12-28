
/* This appears to be information used when rendering rewards. We don't currently use it on BNet. */
class DestinyItemSummaryBlockDefinition{
	
	/* Apparently when rendering an item in a reward, this should be used as a sort priority. We're not doing it presently. */
	int sortPriority;
	DestinyItemSummaryBlockDefinition(
		this.sortPriority,
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
			data['sortPriority'] = this.sortPriority;
		return data;
	}
}