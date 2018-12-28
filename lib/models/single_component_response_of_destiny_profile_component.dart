import 'destiny_profile_component.dart';

/*  */
class SingleComponentResponseOfDestinyProfileComponent{
	
	/*  */
	DestinyProfileComponent data;
	
	/*  */
	int privacy;
	SingleComponentResponseOfDestinyProfileComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyProfileComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyProfileComponent(
				data['data'] != null ? DestinyProfileComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyProfileComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyProfileComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyProfileComponent.fromMap(item));
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