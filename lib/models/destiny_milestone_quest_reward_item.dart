class DestinyMilestoneQuestRewardItem{
	int vendorHash;
	int vendorItemIndex;
	int itemHash;
	String itemInstanceId;
	int quantity;
	DestinyMilestoneQuestRewardItem(
		this.vendorHash,
		this.vendorItemIndex,
		this.itemHash,
		this.itemInstanceId,
		this.quantity,
	);

	static DestinyMilestoneQuestRewardItem fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneQuestRewardItem(
				data['vendorHash'],
				data['vendorItemIndex'],
				data['itemHash'],
				data['itemInstanceId'],
				data['quantity'],
		);
	}

	static List<DestinyMilestoneQuestRewardItem> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneQuestRewardItem> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneQuestRewardItem.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorHash'] = this.vendorHash;
			data['vendorItemIndex'] = this.vendorItemIndex;
			data['itemHash'] = this.itemHash;
			data['itemInstanceId'] = this.itemInstanceId;
			data['quantity'] = this.quantity;
		return data;
	}
}