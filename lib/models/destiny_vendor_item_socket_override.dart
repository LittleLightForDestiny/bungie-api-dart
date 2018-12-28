
/** The information for how the vendor purchase should override a given socket with custom plug data. */
class DestinyVendorItemSocketOverride{
	
	/** If this is populated, the socket will be overridden with a specific plug.
If this isn't populated, it's being overridden by something more complicated that is only known by the Game Server and God, which means we can't tell you in advance what it'll be. */
	int singleItemHash;
	
	/** If this is greater than -1, the number of randomized plugs on this socket will be set to this quantity instead of whatever it's set to by default. */
	int randomizedOptionsCount;
	
	/** This appears to be used to select which socket ultimately gets the override defined here. */
	int socketTypeHash;
	DestinyVendorItemSocketOverride(
		this.singleItemHash,
		this.randomizedOptionsCount,
		this.socketTypeHash,
	);

	static DestinyVendorItemSocketOverride fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorItemSocketOverride(
				data['singleItemHash'],
				data['randomizedOptionsCount'],
				data['socketTypeHash'],
		);
	}

	static List<DestinyVendorItemSocketOverride> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorItemSocketOverride> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorItemSocketOverride.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['singleItemHash'] = this.singleItemHash;
			data['randomizedOptionsCount'] = this.randomizedOptionsCount;
			data['socketTypeHash'] = this.socketTypeHash;
		return data;
	}
}