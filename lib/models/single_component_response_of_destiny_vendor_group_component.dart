import 'destiny_vendor_group_component.dart';

/*  */
class SingleComponentResponseOfDestinyVendorGroupComponent{
	
	/*  */
	DestinyVendorGroupComponent data;
	
	/*  */
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