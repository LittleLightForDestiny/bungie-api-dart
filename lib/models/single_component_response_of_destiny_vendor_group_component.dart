import 'destiny_vendor_group_component.dart';

/**  */
class SingleComponentResponseOfDestinyVendorGroupComponent{
	
	/** This component returns references to all of the Vendors in the response, grouped by categorizations that Bungie has deemed to be interesting, in the order in which both the groups and the vendors within that group should be rendered. */
	DestinyVendorGroupComponent data;
	
	/** A set of flags for reason(s) why the component populated in the way that it did. Inspect the individual flags for the reasons. */
	int privacy;
	SingleComponentResponseOfDestinyVendorGroupComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyVendorGroupComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyVendorGroupComponent(
				data['data'] != null ? DestinyVendorGroupComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyVendorGroupComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyVendorGroupComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyVendorGroupComponent.fromMap(item));
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