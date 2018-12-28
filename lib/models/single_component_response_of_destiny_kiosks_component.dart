import 'destiny_kiosks_component.dart';

/*  */
class SingleComponentResponseOfDestinyKiosksComponent{
	
	/*  */
	DestinyKiosksComponent data;
	
	/*  */
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