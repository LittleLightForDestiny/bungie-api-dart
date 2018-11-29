import 'destiny_vendor_component.dart';
class SingleComponentResponseOfDestinyVendorComponent{
	DestinyVendorComponent data;
	int privacy;
	SingleComponentResponseOfDestinyVendorComponent(
		DestinyVendorComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyVendorComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyVendorComponent(
				DestinyVendorComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyVendorComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyVendorComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyVendorComponent.fromJson(item));
    });
    return list;
	}
}