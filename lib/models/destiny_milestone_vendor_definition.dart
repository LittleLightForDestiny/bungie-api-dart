
/** If the Milestone or a component has vendors whose inventories could/should be displayed that are relevant to it, this will return the vendor in question. 
It also contains information we need to determine whether that vendor is actually relevant at the moment, given the user's current state. */
class DestinyMilestoneVendorDefinition{
	
	/** The hash of the vendor whose wares should be shown as associated with the Milestone. */
	int vendorHash;
	DestinyMilestoneVendorDefinition(
		this.vendorHash,
	);

	static DestinyMilestoneVendorDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyMilestoneVendorDefinition(
				data['vendorHash'],
		);
	}

	static List<DestinyMilestoneVendorDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyMilestoneVendorDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyMilestoneVendorDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorHash'] = this.vendorHash;
		return data;
	}
}