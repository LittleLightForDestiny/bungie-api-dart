class DestinyMilestoneContentItemCategory{
	String title;
	List<int> itemHashes;
	DestinyMilestoneContentItemCategory(
		String this.title,
		List<int> this.itemHashes,
	);

	static DestinyMilestoneContentItemCategory fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneContentItemCategory(
				data['title'],
				data['itemHashes'],
		);
	}

	static List<DestinyMilestoneContentItemCategory> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneContentItemCategory> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneContentItemCategory.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['title'] = this.title;
			data['itemHashes'] = this.itemHashes;
		return data;
	}
}