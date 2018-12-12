import 'destiny_plug_sets_component.dart';
class SingleComponentResponseOfDestinyPlugSetsComponent{
	DestinyPlugSetsComponent data;
	int privacy;
	SingleComponentResponseOfDestinyPlugSetsComponent(
		DestinyPlugSetsComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyPlugSetsComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyPlugSetsComponent(
				DestinyPlugSetsComponent.fromMap(data['data']),
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
			data['data'] = data.toMap();
			data['privacy'] = privacy;
	}
}