import 'destiny_progression.dart';
class DestinyVendorComponent{
	int vendorHash;
	String nextRefreshDate;
	bool enabled;
	bool canPurchase;
	DestinyProgression progression;
	int vendorLocationIndex;
	int seasonalRank;
	DestinyVendorComponent(
		int this.vendorHash,
		String this.nextRefreshDate,
		bool this.enabled,
		bool this.canPurchase,
		DestinyProgression this.progression,
		int this.vendorLocationIndex,
		int this.seasonalRank,
	);

	static DestinyVendorComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorComponent(
				data['vendorHash'],
				data['nextRefreshDate'],
				data['enabled'],
				data['canPurchase'],
				data['progression'],
				data['vendorLocationIndex'],
				data['seasonalRank'],
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
			data['vendorHash'] = this.vendorHash;
			data['nextRefreshDate'] = this.nextRefreshDate;
			data['enabled'] = this.enabled;
			data['canPurchase'] = this.canPurchase;
			data['progression'] = this.progression;
			data['vendorLocationIndex'] = this.vendorLocationIndex;
			data['seasonalRank'] = this.seasonalRank;
		return data;
	}
}