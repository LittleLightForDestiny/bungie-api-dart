class DestinyMilestoneRewardEntry{
	int rewardEntryHash;
	bool earned;
	bool redeemed;
	DestinyMilestoneRewardEntry(
		int this.rewardEntryHash,
		bool this.earned,
		bool this.redeemed,
	);

	static DestinyMilestoneRewardEntry fromJson(Map<String, dynamic> data){
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
      list.add(DestinyMilestoneRewardEntry.fromJson(item));
    });
    return list;
	}
}