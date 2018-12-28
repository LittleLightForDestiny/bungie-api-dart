import 'destiny_kiosks_component.dart';

/**  */
class SingleComponentResponseOfDestinyKiosksComponent{
	
	/** A Kiosk is a Vendor (DestinyVendorDefinition) that sells items based on whether you have already acquired that item before.
This component returns information about what Kiosk items are available to you on a *Profile* level. It is theoretically possible for Kiosks to have items gated by specific Character as well. If you ever have those, you will find them on the individual character's DestinyCharacterKiosksComponent.
Note that, because this component returns vendorItemIndexes (that is to say, indexes into the Kiosk Vendor's itemList property), these results are necessarily content version dependent. Make sure that you have the latest version of the content manifest databases before using this data. */
	DestinyKiosksComponent data;
	
	/** A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons. */
	int privacy;
	SingleComponentResponseOfDestinyKiosksComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyKiosksComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyKiosksComponent(
				data['data'] != null ? DestinyKiosksComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyKiosksComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyKiosksComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyKiosksComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = this.data.toMap();
			data['privacy'] = this.privacy;
		return data;
	}
}