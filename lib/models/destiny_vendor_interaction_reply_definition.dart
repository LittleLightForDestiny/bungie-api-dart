class DestinyVendorInteractionReplyDefinition{
	int itemRewardsSelection;
	String reply;
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