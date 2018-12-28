
/** These definitions represent faction vendors at different points in the game.
A single faction may contain multiple vendors, or the same vendor available at two different locations. */
class DestinyFactionVendorDefinition{
	
	/** The faction vendor hash. */
	int vendorHash;
	
	/** The hash identifier for a Destination at which this vendor may be located. Each destination where a Vendor may exist will only ever have a single entry. */
	int destinationHash;
	
	/** The relative path to the background image representing this Vendor at this location, for use in a banner. */
	String backgroundImagePath;
	DestinyFactionVendorDefinition(
		this.vendorHash,
		this.destinationHash,
		this.backgroundImagePath,
	);

	static DestinyFactionVendorDefinition fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyFactionVendorDefinition(
				data['vendorHash'],
				data['destinationHash'],
				data['backgroundImagePath'],
		);
	}

	static List<DestinyFactionVendorDefinition> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyFactionVendorDefinition> list = new List();
    data.forEach((item) {
      list.add(DestinyFactionVendorDefinition.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorHash'] = this.vendorHash;
			data['destinationHash'] = this.destinationHash;
			data['backgroundImagePath'] = this.backgroundImagePath;
		return data;
	}
}