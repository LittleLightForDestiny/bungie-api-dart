import 'destiny_plug_sets_component.dart';

/*  */
class SingleComponentResponseOfDestinyPlugSetsComponent{
	
	/*  */
	DestinyPlugSetsComponent data;
	
	/*  */
	int privacy;
	SingleComponentResponseOfDestinyPlugSetsComponent(
		this.data,
		this.privacy,
	);

	static SingleComponentResponseOfDestinyPlugSetsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyPlugSetsComponent(
				data['data'] != null ? DestinyPlugSetsComponent.fromMap(data['data']) : null,
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyPlugSetsComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyPlugSetsComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyPlugSetsComponent.fromMap(item));
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