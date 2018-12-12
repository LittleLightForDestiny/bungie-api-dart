import 'destiny_vendor_group.dart';
class DestinyVendorGroupComponent{
	List<DestinyVendorGroup> groups;
	DestinyVendorGroupComponent(
		List<DestinyVendorGroup> this.groups,
	);

	static DestinyVendorGroupComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new DestinyVendorGroupComponent(
				DestinyVendorGroup.fromList(data['groups']),
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