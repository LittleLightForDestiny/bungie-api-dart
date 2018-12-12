class DestinyMilestoneRewardEntry{
	int rewardEntryHash;
	bool earned;
	bool redeemed;
	DestinyMilestoneRewardEntry(
		int this.rewardEntryHash,
		bool this.earned,
		bool this.redeemed,
	);

	static DestinyMilestoneRewardEntry fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneRewardEntry(
				data['rewardEntryHash'],
				data['earned'],
				data['redeemed'],
		);
	}

	static List<DestinyMilestoneRewardEntry> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneRewardEntry> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneRewardEntry.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['rewardEntryHash'] = this.rewardEntryHash;
			data['earned'] = this.earned;
			data['redeemed'] = this.redeemed;
		return data;
	}
}