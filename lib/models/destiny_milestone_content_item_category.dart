class DestinyMilestoneContentItemCategory{
	String title;
	List<int> itemHashes;
	DestinyMilestoneContentItemCategory(
		String this.title,
		List<int> this.itemHashes,
	);

	static DestinyMilestoneContentItemCategory fromJson(Map<String, dynamic> data){
		return new DestinyMilestoneContentItemCategory(
				data['title'],
				data['itemHashes'],
		);
	}

	static List<DestinyMilestoneContentItemCategory> fromList(List<dynamic> data){
		List<DestinyMilestoneContentItemCategory> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneContentItemCategory.fromJson(item));
    });
    return list;
	}
}