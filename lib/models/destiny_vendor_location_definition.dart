
/** These definitions represent vendors' locations and relevant display information at different times in the game. */
class DestinyVendorLocationDefinition{
	
	/** The hash identifier for a Destination at which this vendor may be located. Each destination where a Vendor may exist will only ever have a single entry. */
	int destinationHash;
	
	/** The relative path to the background image representing this Vendor at this location, for use in a banner. */
	String backgroundImagePath;
	DestinyVendorLocationDefinition(
		this.destinationHash,
		this.backgroundImagePath,
	);

	static DestinyVendorLocationDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorLocationDefinition(
				data['destinationHash'],
				data['backgroundImagePath'],
		);
	}

	static List<DestinyVendorLocationDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorLocationDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorLocationDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['destinationHash'] = this.destinationHash;
			data['backgroundImagePath'] = this.backgroundImagePath;
		return data;
	}
}