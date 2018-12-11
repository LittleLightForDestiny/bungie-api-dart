class DestinyVendorInteractionReplyDefinition{
	int itemRewardsSelection;
	String reply;
	int replyType;
	DestinyVendorInteractionReplyDefinition(
		int this.itemRewardsSelection,
		String this.reply,
		int this.replyType,
	);

	static DestinyVendorInteractionReplyDefinition fromJson(Map<String, dynamic> data){
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
      list.add(DestinyVendorInteractionReplyDefinition.fromJson(item));
    });
    return list;
	}
}