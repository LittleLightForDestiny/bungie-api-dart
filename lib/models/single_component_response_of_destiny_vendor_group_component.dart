import 'destiny_vendor_group_component.dart';
class SingleComponentResponseOfDestinyVendorGroupComponent{
	DestinyVendorGroupComponent data;
	int privacy;
	SingleComponentResponseOfDestinyVendorGroupComponent(
		DestinyVendorGroupComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyVendorGroupComponent fromJson(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyVendorGroupComponent(
				DestinyVendorGroupComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyVendorGroupComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyVendorGroupComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyVendorGroupComponent.fromJson(item));
    });
    return list;
	}
}