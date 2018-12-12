import 'destiny_vendor_component.dart';
class SingleComponentResponseOfDestinyVendorComponent{
	DestinyVendorComponent data;
	int privacy;
	SingleComponentResponseOfDestinyVendorComponent(
		DestinyVendorComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyVendorComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyVendorComponent(
				DestinyVendorComponent.fromMap(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyVendorComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyVendorComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyVendorComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = data.toMap();
			data['privacy'] = privacy;
	}
}