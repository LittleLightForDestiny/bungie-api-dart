import 'destiny_kiosk_item.dart';

/* A Kiosk is a Vendor (DestinyVendorDefinition) that sells items based on whether you have already acquired that item before.
This component returns information about what Kiosk items are available to you on a *Profile* level. It is theoretically possible for Kiosks to have items gated by specific Character as well. If you ever have those, you will find them on the individual character's DestinyCharacterKiosksComponent.
Note that, because this component returns vendorItemIndexes (that is to say, indexes into the Kiosk Vendor's itemList property), these results are necessarily content version dependent. Make sure that you have the latest version of the content manifest databases before using this data. */
class DestinyKiosksComponent{
	
	/* A dictionary keyed by the Kiosk Vendor's hash identifier (use it to look up the DestinyVendorDefinition for the relevant kiosk vendor), and whose value is a list of all the items that the user can "see" in the Kiosk, and any other interesting metadata. */
	Map<String, List<DestinyKioskItem>> kioskItems;
	DestinyKiosksComponent(
		this.kioskItems,
	);

	static DestinyKiosksComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyKiosksComponent(
				data['kioskItems'] != null ? Map<String, List<DestinyKioskItem>>.from(data['kioskItems'].map((k, v)=>MapEntry(k, DestinyKioskItem.fromList(v)))) : null,
		);
	}

	static List<DestinyKiosksComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyKiosksComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyKiosksComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['kioskItems'] = this.kioskItems;
		return data;
	}
}