import 'destiny_collectibles_component.dart';
class SingleComponentResponseOfDestinyCollectiblesComponent{
	DestinyCollectiblesComponent data;
	int privacy;
	SingleComponentResponseOfDestinyCollectiblesComponent(
		DestinyCollectiblesComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyCollectiblesComponent fromMap(Map<String, dynamic> data){
		if(data == null) {
			return null;
		};
		return new SingleComponentResponseOfDestinyCollectiblesComponent(
				DestinyCollectiblesComponent.fromMap(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyCollectiblesComponent> fromList(List<dynamic> data){
		if(data == null) {
			return null;
		};
		List<SingleComponentResponseOfDestinyCollectiblesComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyCollectiblesComponent.fromMap(item));
    });
    return list;
	}

	Map<String, dynamic> toMap(){
		Map<String, dynamic> data = new Map();
			data['data'] = data.toMap();
			data['privacy'] = privacy;
	}
}