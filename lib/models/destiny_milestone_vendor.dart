
/** If a Milestone has one or more Vendors that are relevant to it, this will contain information about that vendor that you can choose to show. */
class DestinyMilestoneVendor{
	
	/** The hash identifier of the Vendor related to this Milestone. You can show useful things from this, such as thier Faction icon or whatever you might care about. */
	int vendorHash;
	
	/** If this vendor is featuring a specific item for this event, this will be the hash identifier of that item. I'm taking bets now on how long we go before this needs to be a list or some other, more complex representation instead and I deprecate this too. I'm going to go with 5 months. Calling it now, 2017-09-14 at 9:46pm PST. */
	int previewItemHash;
	DestinyMilestoneVendor(
		this.vendorHash,
		this.previewItemHash,
	);

	static DestinyMilestoneVendor fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneVendor(
				data['vendorHash'],
				data['previewItemHash'],
		);
	}

	static List<DestinyMilestoneVendor> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneVendor> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneVendor.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorHash'] = this.vendorHash;
			data['previewItemHash'] = this.previewItemHash;
		return data;
	}
}