
/* When the interaction is replied to, Reward sites will fire and items potentially selected based on whether the given unlock expression is TRUE.
You can potentially choose one from multiple replies when replying to an interaction: this is how you get either/or rewards from vendors. */
class DestinyVendorInteractionReplyDefinition{
	
	/* The rewards granted upon responding to the vendor. */
	int itemRewardsSelection;
	
	/* The localized text for the reply. */
	String reply;
	
	/* An enum indicating the type of reply being made. */
	int replyType;
	DestinyVendorInteractionReplyDefinition(
		this.itemRewardsSelection,
		this.reply,
		this.replyType,
	);

	static DestinyVendorInteractionReplyDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorInteractionReplyDefinition(
				data['itemRewardsSelection'],
				data['reply'],
				data['replyType'],
		);
	}

	static List<DestinyVendorInteractionReplyDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorInteractionReplyDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorInteractionReplyDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['itemRewardsSelection'] = this.itemRewardsSelection;
			data['reply'] = this.reply;
			data['replyType'] = this.replyType;
		return data;
	}
}