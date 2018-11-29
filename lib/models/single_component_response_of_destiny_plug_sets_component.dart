import 'destiny_plug_sets_component.dart';
class SingleComponentResponseOfDestinyPlugSetsComponent{
	DestinyPlugSetsComponent data;
	int privacy;
	SingleComponentResponseOfDestinyPlugSetsComponent(
		DestinyPlugSetsComponent this.data,
		int this.privacy,
	);

	static SingleComponentResponseOfDestinyPlugSetsComponent fromJson(Map<String, dynamic> data){
		return new SingleComponentResponseOfDestinyPlugSetsComponent(
				DestinyPlugSetsComponent.fromJson(data['data']),
				data['privacy'],
		);
	}

	static List<SingleComponentResponseOfDestinyPlugSetsComponent> fromList(List<dynamic> data){
		List<SingleComponentResponseOfDestinyPlugSetsComponent> list = new List();
    data.forEach((item) {
      list.add(SingleComponentResponseOfDestinyPlugSetsComponent.fromJson(item));
    });
    return list;
	}
}