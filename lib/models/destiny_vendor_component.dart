import 'destiny_progression.dart';

/** This component contains essential/summary information about the vendor. */
class DestinyVendorComponent{
	
	/** If True, you can purchase from the Vendor.
Theoretically, Vendors can be restricted from selling items. In practice, none do that (yet?). */
	bool canPurchase;
	
	/** If the Vendor has a related Reputation, this is the Progression data that represents the character's Reputation level with this Vendor. */
	DestinyProgression progression;
	
	/** An index into the vendor definition's "locations" property array, indicating which location they are at currently. If -1, then the vendor has no known location (and you may choose not to show them in your UI as a result. I mean, it's your bag honey) */
	int vendorLocationIndex;
	
	/** If this vendor has a seasonal rank, this will be the calculated value of that rank. How nice is that? I mean, that's pretty sweeet. It's a whole 32 bit integer. */
	int seasonalRank;
	
	/** The unique identifier for the vendor. Use it to look up their DestinyVendorDefinition. */
	int vendorHash;
	
	/** The date when this vendor's inventory will next rotate/refresh.
Note that this is distinct from the date ranges that the vendor is visible/available in-game: this field indicates the specific time when the vendor's available items refresh and rotate, regardless of whether the vendor is actually available at that time. Unfortunately, these two values may be (and are, for the case of important vendors like Xur) different.
Issue https://github.com/Bungie-net/api/issues/353 is tracking a fix to start providing visibility date ranges where possible in addition to this refresh date, so that all important dates for vendors are available for use. */
	String nextRefreshDate;
	
	/** If True, the Vendor is currently accessible. 
If False, they may not actually be visible in the world at the moment. */
	bool enabled;
	DestinyVendorComponent(
		this.canPurchase,
		this.progression,
		this.vendorLocationIndex,
		this.seasonalRank,
		this.vendorHash,
		this.nextRefreshDate,
		this.enabled,
	);

	static DestinyVendorComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorComponent(
				data['canPurchase'],
				data['progression'] != null ? DestinyProgression.fromMap(data['progression']) : null,
				data['vendorLocationIndex'],
				data['seasonalRank'],
				data['vendorHash'],
				data['nextRefreshDate'],
				data['enabled'],
		);
	}

	static List<DestinyVendorComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['canPurchase'] = this.canPurchase;
			data['progression'] = this.progression != null? this.progression.toMap() : null;
			data['vendorLocationIndex'] = this.vendorLocationIndex;
			data['seasonalRank'] = this.seasonalRank;
			data['vendorHash'] = this.vendorHash;
			data['nextRefreshDate'] = this.nextRefreshDate;
			data['enabled'] = this.enabled;
		return data;
	}
}