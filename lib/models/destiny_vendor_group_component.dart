import 'destiny_vendor_group.dart';

/** This component returns references to all of the Vendors in the response, grouped by categorizations that Bungie has deemed to be interesting, in the order in which both the groups and the vendors within that group should be rendered. */
class DestinyVendorGroupComponent{
	
	/** The ordered list of groups being returned. */
	List<DestinyVendorGroup> groups;
	DestinyVendorGroupComponent(
		this.groups,
	);

	static DestinyVendorGroupComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorGroupComponent(
				data['groups'] != null ? DestinyVendorGroup.fromList(data['groups']) : null,
		);
	}

	static List<DestinyVendorGroupComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<DestinyVendorGroupComponent> list = new List();
    data.forEach((item) {
      list.add(DestinyVendorGroupComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['groups'] = this.groups.map((item)=>item.toMap()).toList();
		return data;
	}
}