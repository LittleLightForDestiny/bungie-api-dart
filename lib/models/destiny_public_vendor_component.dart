
/** This component contains essential/summary information about the vendor from the perspective of a character-agnostic view. */
class DestinyPublicVendorComponent{
	
	/** The unique identifier for the vendor. Use it to look up their DestinyVendorDefinition. */
	int vendorHash;
	
	/** The date when this vendor's inventory will next rotate/refresh.
Note that this is distinct from the date ranges that the vendor is visible/available in-game: this field indicates the specific time when the vendor's available items refresh and rotate, regardless of whether the vendor is actually available at that time. Unfortunately, these two values may be (and are, for the case of important vendors like Xur) different.
Issue https://github.com/Bungie-net/api/issues/353 is tracking a fix to start providing visibility date ranges where possible in addition to this refresh date, so that all important dates for vendors are available for use. */
	String nextRefreshDate;
	
	/** If True, the Vendor is currently accessible. 
If False, they may not actually be visible in the world at the moment. */
	bool enabled;
	DestinyPublicVendorComponent(
		this.vendorHash,
		this.nextRefreshDate,
		this.enabled,
	);

	static DestinyPublicVendorComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyPublicVendorComponent(
				data['vendorHash'],
				data['nextRefreshDate'],
				data['enabled'],
		);
	}

	static List<DestinyPublicVendorComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyPublicVendorComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyPublicVendorComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['vendorHash'] = this.vendorHash;
			data['nextRefreshDate'] = this.nextRefreshDate;
			data['enabled'] = this.enabled;
		return data;
	}
}