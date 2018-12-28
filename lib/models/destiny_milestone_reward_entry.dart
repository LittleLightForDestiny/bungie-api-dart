
/** The character-specific data for a milestone's reward entry. See DestinyMilestoneDefinition for more information about Reward Entries. */
class DestinyMilestoneRewardEntry{
	
	/** The identifier for the reward entry in question. It is important to look up the related DestinyMilestoneRewardEntryDefinition to get the static details about the reward, which you can do by looking up the milestone's DestinyMilestoneDefinition and examining the DestinyMilestoneDefinition.rewards[rewardCategoryHash].rewardEntries[rewardEntryHash] data. */
	int rewardEntryHash;
	
	/** If TRUE, the player has earned this reward. */
	bool earned;
	
	/** If TRUE, the player has redeemed/picked up/obtained this reward. Feel free to alias this to "gotTheShinyBauble" in your own codebase. */
	bool redeemed;
	DestinyMilestoneRewardEntry(
		this.rewardEntryHash,
		this.earned,
		this.redeemed,
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