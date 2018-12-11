import 'destiny_vendor_group.dart';
class DestinyVendorGroupComponent{
	List<DestinyVendorGroup> groups;
	DestinyVendorGroupComponent(
		List<DestinyVendorGroup> this.groups,
	);

	static DestinyVendorGroupComponent fromJson(Map<String, dynamic> data){
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
      list.add(DestinyVendorGroupComponent.fromJson(item));
    });
    return list;
	}
}